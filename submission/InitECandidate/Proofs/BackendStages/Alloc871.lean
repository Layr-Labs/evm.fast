import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw871
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody871_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody871_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody871_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody871_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4597#64)

def AllocBody871_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody871_5 : StackLang.HolProg 64 :=
.seq AllocBody871_3 AllocBody871_4

def AllocBody871_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody871_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody871_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody871_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 871 3

def AllocBody871_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody871_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody871_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody871_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody871_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody871_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody871_16 : StackLang.HolProg 64 :=
.seq AllocBody871_14 AllocBody871_15

def AllocBody871_17 : StackLang.HolProg 64 :=
.seq AllocBody871_13 AllocBody871_16

def AllocBody871_18 : StackLang.HolProg 64 :=
.seq AllocBody871_12 AllocBody871_17

def AllocBody871_19 : StackLang.HolProg 64 :=
.seq AllocBody871_11 AllocBody871_18

def AllocBody871_20 : StackLang.HolProg 64 :=
.seq AllocBody871_10 AllocBody871_19

def AllocBody871_21 : StackLang.HolProg 64 :=
.seq AllocBody871_9 AllocBody871_20

def AllocBody871_22 : StackLang.HolProg 64 :=
.seq AllocBody871_8 AllocBody871_21

def AllocBody871_23 : StackLang.HolProg 64 :=
.seq AllocBody871_7 AllocBody871_22

def AllocBody871_24 : StackLang.HolProg 64 :=
.seq AllocBody871_6 AllocBody871_23

def AllocBody871_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody871_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody871_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody871_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody871_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody871_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody871_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody871_32 : StackLang.HolProg 64 :=
.seq AllocBody871_30 AllocBody871_31

def AllocBody871_33 : StackLang.HolProg 64 :=
.seq AllocBody871_29 AllocBody871_32

def AllocBody871_34 : StackLang.HolProg 64 :=
.seq AllocBody871_28 AllocBody871_33

def AllocBody871_35 : StackLang.HolProg 64 :=
.seq AllocBody871_27 AllocBody871_34

def AllocBody871_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody871_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody871_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody871_39 : StackLang.HolProg 64 :=
.seq AllocBody871_37 AllocBody871_38

def AllocBody871_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody871_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody871_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody871_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def AllocBody871_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def AllocBody871_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2#64)

def AllocBody871_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody871_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody871_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def AllocBody871_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody871_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody871_51 : StackLang.HolProg 64 :=
.seq AllocBody871_49 AllocBody871_50

def AllocBody871_52 : StackLang.HolProg 64 :=
.seq AllocBody871_48 AllocBody871_51

def AllocBody871_53 : StackLang.HolProg 64 :=
.seq AllocBody871_47 AllocBody871_52

def AllocBody871_54 : StackLang.HolProg 64 :=
.seq AllocBody871_46 AllocBody871_53

def AllocBody871_55 : StackLang.HolProg 64 :=
.seq AllocBody871_45 AllocBody871_54

def AllocBody871_56 : StackLang.HolProg 64 :=
.seq AllocBody871_44 AllocBody871_55

def AllocBody871_57 : StackLang.HolProg 64 :=
.seq AllocBody871_43 AllocBody871_56

def AllocBody871_58 : StackLang.HolProg 64 :=
.seq AllocBody871_42 AllocBody871_57

def AllocBody871_59 : StackLang.HolProg 64 :=
.seq AllocBody871_41 AllocBody871_58

def AllocBody871_60 : StackLang.HolProg 64 :=
.seq AllocBody871_40 AllocBody871_59

def AllocBody871_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64) AllocBody871_39 AllocBody871_60

def AllocBody871_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody871_63 : StackLang.HolProg 64 :=
.seq AllocBody871_61 AllocBody871_62

def AllocBody871_64 : StackLang.HolProg 64 :=
.seq AllocBody871_36 AllocBody871_63

def AllocBody871_65 : StackLang.HolProg 64 :=
.call (some (AllocBody871_35, 0, 871, 2)) (Sum.inl 870) (some (AllocBody871_64, 871, 3))

def AllocBody871_66 : StackLang.HolProg 64 :=
.seq AllocBody871_26 AllocBody871_65

def AllocBody871_67 : StackLang.HolProg 64 :=
.seq AllocBody871_25 AllocBody871_66

def AllocBody871_68 : StackLang.HolProg 64 :=
.seq AllocBody871_24 AllocBody871_67

def AllocBody871_69 : StackLang.HolProg 64 :=
.seq AllocBody871_5 AllocBody871_68

def AllocBody871_70 : StackLang.HolProg 64 :=
.seq AllocBody871_2 AllocBody871_69

def AllocBody871_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody871_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody871_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody871_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody871_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody871_76 : StackLang.HolProg 64 :=
.seq AllocBody871_74 AllocBody871_75

def AllocBody871_77 : StackLang.HolProg 64 :=
.seq AllocBody871_73 AllocBody871_76

def AllocBody871_78 : StackLang.HolProg 64 :=
.seq AllocBody871_72 AllocBody871_77

def AllocBody871_79 : StackLang.HolProg 64 :=
.seq AllocBody871_71 AllocBody871_78

def AllocBody871_80 : StackLang.HolProg 64 :=
.seq AllocBody871_70 AllocBody871_79

def AllocBody871_81 : StackLang.HolProg 64 :=
.seq AllocBody871_1 AllocBody871_80

def AllocBody871_82 : StackLang.HolProg 64 :=
.seq AllocBody871_0 AllocBody871_81

def Alloc871 : Nat × StackLang.HolProg 64 := (871, AllocBody871_82)
theorem Alloc871_eq : StackAlloc.progComp (871, raw871) = Alloc871 := by
  kernel_rfl
#print axioms Alloc871_eq
end InitECandidate.Proofs.BackendStages
