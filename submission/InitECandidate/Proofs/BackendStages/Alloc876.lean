import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw876
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody876_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody876_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody876_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody876_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4602#64)

def AllocBody876_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody876_5 : StackLang.HolProg 64 :=
.seq AllocBody876_3 AllocBody876_4

def AllocBody876_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody876_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody876_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody876_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 876 3

def AllocBody876_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody876_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody876_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody876_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody876_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody876_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody876_16 : StackLang.HolProg 64 :=
.seq AllocBody876_14 AllocBody876_15

def AllocBody876_17 : StackLang.HolProg 64 :=
.seq AllocBody876_13 AllocBody876_16

def AllocBody876_18 : StackLang.HolProg 64 :=
.seq AllocBody876_12 AllocBody876_17

def AllocBody876_19 : StackLang.HolProg 64 :=
.seq AllocBody876_11 AllocBody876_18

def AllocBody876_20 : StackLang.HolProg 64 :=
.seq AllocBody876_10 AllocBody876_19

def AllocBody876_21 : StackLang.HolProg 64 :=
.seq AllocBody876_9 AllocBody876_20

def AllocBody876_22 : StackLang.HolProg 64 :=
.seq AllocBody876_8 AllocBody876_21

def AllocBody876_23 : StackLang.HolProg 64 :=
.seq AllocBody876_7 AllocBody876_22

def AllocBody876_24 : StackLang.HolProg 64 :=
.seq AllocBody876_6 AllocBody876_23

def AllocBody876_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody876_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody876_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody876_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody876_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody876_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody876_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody876_32 : StackLang.HolProg 64 :=
.seq AllocBody876_30 AllocBody876_31

def AllocBody876_33 : StackLang.HolProg 64 :=
.seq AllocBody876_29 AllocBody876_32

def AllocBody876_34 : StackLang.HolProg 64 :=
.seq AllocBody876_28 AllocBody876_33

def AllocBody876_35 : StackLang.HolProg 64 :=
.seq AllocBody876_27 AllocBody876_34

def AllocBody876_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody876_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody876_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody876_39 : StackLang.HolProg 64 :=
.seq AllocBody876_37 AllocBody876_38

def AllocBody876_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody876_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody876_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody876_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def AllocBody876_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def AllocBody876_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 7#64)

def AllocBody876_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody876_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody876_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def AllocBody876_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody876_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody876_51 : StackLang.HolProg 64 :=
.seq AllocBody876_49 AllocBody876_50

def AllocBody876_52 : StackLang.HolProg 64 :=
.seq AllocBody876_48 AllocBody876_51

def AllocBody876_53 : StackLang.HolProg 64 :=
.seq AllocBody876_47 AllocBody876_52

def AllocBody876_54 : StackLang.HolProg 64 :=
.seq AllocBody876_46 AllocBody876_53

def AllocBody876_55 : StackLang.HolProg 64 :=
.seq AllocBody876_45 AllocBody876_54

def AllocBody876_56 : StackLang.HolProg 64 :=
.seq AllocBody876_44 AllocBody876_55

def AllocBody876_57 : StackLang.HolProg 64 :=
.seq AllocBody876_43 AllocBody876_56

def AllocBody876_58 : StackLang.HolProg 64 :=
.seq AllocBody876_42 AllocBody876_57

def AllocBody876_59 : StackLang.HolProg 64 :=
.seq AllocBody876_41 AllocBody876_58

def AllocBody876_60 : StackLang.HolProg 64 :=
.seq AllocBody876_40 AllocBody876_59

def AllocBody876_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) AllocBody876_39 AllocBody876_60

def AllocBody876_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody876_63 : StackLang.HolProg 64 :=
.seq AllocBody876_61 AllocBody876_62

def AllocBody876_64 : StackLang.HolProg 64 :=
.seq AllocBody876_36 AllocBody876_63

def AllocBody876_65 : StackLang.HolProg 64 :=
.call (some (AllocBody876_35, 0, 876, 2)) (Sum.inl 875) (some (AllocBody876_64, 876, 3))

def AllocBody876_66 : StackLang.HolProg 64 :=
.seq AllocBody876_26 AllocBody876_65

def AllocBody876_67 : StackLang.HolProg 64 :=
.seq AllocBody876_25 AllocBody876_66

def AllocBody876_68 : StackLang.HolProg 64 :=
.seq AllocBody876_24 AllocBody876_67

def AllocBody876_69 : StackLang.HolProg 64 :=
.seq AllocBody876_5 AllocBody876_68

def AllocBody876_70 : StackLang.HolProg 64 :=
.seq AllocBody876_2 AllocBody876_69

def AllocBody876_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody876_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody876_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody876_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody876_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody876_76 : StackLang.HolProg 64 :=
.seq AllocBody876_74 AllocBody876_75

def AllocBody876_77 : StackLang.HolProg 64 :=
.seq AllocBody876_73 AllocBody876_76

def AllocBody876_78 : StackLang.HolProg 64 :=
.seq AllocBody876_72 AllocBody876_77

def AllocBody876_79 : StackLang.HolProg 64 :=
.seq AllocBody876_71 AllocBody876_78

def AllocBody876_80 : StackLang.HolProg 64 :=
.seq AllocBody876_70 AllocBody876_79

def AllocBody876_81 : StackLang.HolProg 64 :=
.seq AllocBody876_1 AllocBody876_80

def AllocBody876_82 : StackLang.HolProg 64 :=
.seq AllocBody876_0 AllocBody876_81

def Alloc876 : Nat × StackLang.HolProg 64 := (876, AllocBody876_82)
theorem Alloc876_eq : StackAlloc.progComp (876, raw876) = Alloc876 := by
  kernel_rfl
#print axioms Alloc876_eq
end InitECandidate.Proofs.BackendStages
