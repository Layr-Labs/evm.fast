import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw873
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody873_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody873_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody873_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody873_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4599#64)

def AllocBody873_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody873_5 : StackLang.HolProg 64 :=
.seq AllocBody873_3 AllocBody873_4

def AllocBody873_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody873_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody873_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody873_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 873 3

def AllocBody873_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody873_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody873_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody873_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody873_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody873_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody873_16 : StackLang.HolProg 64 :=
.seq AllocBody873_14 AllocBody873_15

def AllocBody873_17 : StackLang.HolProg 64 :=
.seq AllocBody873_13 AllocBody873_16

def AllocBody873_18 : StackLang.HolProg 64 :=
.seq AllocBody873_12 AllocBody873_17

def AllocBody873_19 : StackLang.HolProg 64 :=
.seq AllocBody873_11 AllocBody873_18

def AllocBody873_20 : StackLang.HolProg 64 :=
.seq AllocBody873_10 AllocBody873_19

def AllocBody873_21 : StackLang.HolProg 64 :=
.seq AllocBody873_9 AllocBody873_20

def AllocBody873_22 : StackLang.HolProg 64 :=
.seq AllocBody873_8 AllocBody873_21

def AllocBody873_23 : StackLang.HolProg 64 :=
.seq AllocBody873_7 AllocBody873_22

def AllocBody873_24 : StackLang.HolProg 64 :=
.seq AllocBody873_6 AllocBody873_23

def AllocBody873_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody873_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody873_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody873_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody873_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody873_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody873_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody873_32 : StackLang.HolProg 64 :=
.seq AllocBody873_30 AllocBody873_31

def AllocBody873_33 : StackLang.HolProg 64 :=
.seq AllocBody873_29 AllocBody873_32

def AllocBody873_34 : StackLang.HolProg 64 :=
.seq AllocBody873_28 AllocBody873_33

def AllocBody873_35 : StackLang.HolProg 64 :=
.seq AllocBody873_27 AllocBody873_34

def AllocBody873_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody873_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody873_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody873_39 : StackLang.HolProg 64 :=
.seq AllocBody873_37 AllocBody873_38

def AllocBody873_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody873_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody873_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody873_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def AllocBody873_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def AllocBody873_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4#64)

def AllocBody873_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody873_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody873_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def AllocBody873_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody873_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody873_51 : StackLang.HolProg 64 :=
.seq AllocBody873_49 AllocBody873_50

def AllocBody873_52 : StackLang.HolProg 64 :=
.seq AllocBody873_48 AllocBody873_51

def AllocBody873_53 : StackLang.HolProg 64 :=
.seq AllocBody873_47 AllocBody873_52

def AllocBody873_54 : StackLang.HolProg 64 :=
.seq AllocBody873_46 AllocBody873_53

def AllocBody873_55 : StackLang.HolProg 64 :=
.seq AllocBody873_45 AllocBody873_54

def AllocBody873_56 : StackLang.HolProg 64 :=
.seq AllocBody873_44 AllocBody873_55

def AllocBody873_57 : StackLang.HolProg 64 :=
.seq AllocBody873_43 AllocBody873_56

def AllocBody873_58 : StackLang.HolProg 64 :=
.seq AllocBody873_42 AllocBody873_57

def AllocBody873_59 : StackLang.HolProg 64 :=
.seq AllocBody873_41 AllocBody873_58

def AllocBody873_60 : StackLang.HolProg 64 :=
.seq AllocBody873_40 AllocBody873_59

def AllocBody873_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64) AllocBody873_39 AllocBody873_60

def AllocBody873_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody873_63 : StackLang.HolProg 64 :=
.seq AllocBody873_61 AllocBody873_62

def AllocBody873_64 : StackLang.HolProg 64 :=
.seq AllocBody873_36 AllocBody873_63

def AllocBody873_65 : StackLang.HolProg 64 :=
.call (some (AllocBody873_35, 0, 873, 2)) (Sum.inl 872) (some (AllocBody873_64, 873, 3))

def AllocBody873_66 : StackLang.HolProg 64 :=
.seq AllocBody873_26 AllocBody873_65

def AllocBody873_67 : StackLang.HolProg 64 :=
.seq AllocBody873_25 AllocBody873_66

def AllocBody873_68 : StackLang.HolProg 64 :=
.seq AllocBody873_24 AllocBody873_67

def AllocBody873_69 : StackLang.HolProg 64 :=
.seq AllocBody873_5 AllocBody873_68

def AllocBody873_70 : StackLang.HolProg 64 :=
.seq AllocBody873_2 AllocBody873_69

def AllocBody873_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody873_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody873_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody873_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody873_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody873_76 : StackLang.HolProg 64 :=
.seq AllocBody873_74 AllocBody873_75

def AllocBody873_77 : StackLang.HolProg 64 :=
.seq AllocBody873_73 AllocBody873_76

def AllocBody873_78 : StackLang.HolProg 64 :=
.seq AllocBody873_72 AllocBody873_77

def AllocBody873_79 : StackLang.HolProg 64 :=
.seq AllocBody873_71 AllocBody873_78

def AllocBody873_80 : StackLang.HolProg 64 :=
.seq AllocBody873_70 AllocBody873_79

def AllocBody873_81 : StackLang.HolProg 64 :=
.seq AllocBody873_1 AllocBody873_80

def AllocBody873_82 : StackLang.HolProg 64 :=
.seq AllocBody873_0 AllocBody873_81

def Alloc873 : Nat × StackLang.HolProg 64 := (873, AllocBody873_82)
theorem Alloc873_eq : StackAlloc.progComp (873, raw873) = Alloc873 := by
  kernel_rfl
#print axioms Alloc873_eq
end InitECandidate.Proofs.BackendStages
