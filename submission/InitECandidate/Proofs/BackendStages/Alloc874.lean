import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw874
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody874_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody874_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody874_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody874_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4600#64)

def AllocBody874_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody874_5 : StackLang.HolProg 64 :=
.seq AllocBody874_3 AllocBody874_4

def AllocBody874_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody874_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody874_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody874_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 874 3

def AllocBody874_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody874_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody874_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody874_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody874_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody874_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody874_16 : StackLang.HolProg 64 :=
.seq AllocBody874_14 AllocBody874_15

def AllocBody874_17 : StackLang.HolProg 64 :=
.seq AllocBody874_13 AllocBody874_16

def AllocBody874_18 : StackLang.HolProg 64 :=
.seq AllocBody874_12 AllocBody874_17

def AllocBody874_19 : StackLang.HolProg 64 :=
.seq AllocBody874_11 AllocBody874_18

def AllocBody874_20 : StackLang.HolProg 64 :=
.seq AllocBody874_10 AllocBody874_19

def AllocBody874_21 : StackLang.HolProg 64 :=
.seq AllocBody874_9 AllocBody874_20

def AllocBody874_22 : StackLang.HolProg 64 :=
.seq AllocBody874_8 AllocBody874_21

def AllocBody874_23 : StackLang.HolProg 64 :=
.seq AllocBody874_7 AllocBody874_22

def AllocBody874_24 : StackLang.HolProg 64 :=
.seq AllocBody874_6 AllocBody874_23

def AllocBody874_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody874_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody874_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody874_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody874_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody874_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody874_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody874_32 : StackLang.HolProg 64 :=
.seq AllocBody874_30 AllocBody874_31

def AllocBody874_33 : StackLang.HolProg 64 :=
.seq AllocBody874_29 AllocBody874_32

def AllocBody874_34 : StackLang.HolProg 64 :=
.seq AllocBody874_28 AllocBody874_33

def AllocBody874_35 : StackLang.HolProg 64 :=
.seq AllocBody874_27 AllocBody874_34

def AllocBody874_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody874_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody874_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody874_39 : StackLang.HolProg 64 :=
.seq AllocBody874_37 AllocBody874_38

def AllocBody874_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody874_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody874_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody874_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def AllocBody874_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def AllocBody874_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 5#64)

def AllocBody874_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody874_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody874_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def AllocBody874_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody874_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody874_51 : StackLang.HolProg 64 :=
.seq AllocBody874_49 AllocBody874_50

def AllocBody874_52 : StackLang.HolProg 64 :=
.seq AllocBody874_48 AllocBody874_51

def AllocBody874_53 : StackLang.HolProg 64 :=
.seq AllocBody874_47 AllocBody874_52

def AllocBody874_54 : StackLang.HolProg 64 :=
.seq AllocBody874_46 AllocBody874_53

def AllocBody874_55 : StackLang.HolProg 64 :=
.seq AllocBody874_45 AllocBody874_54

def AllocBody874_56 : StackLang.HolProg 64 :=
.seq AllocBody874_44 AllocBody874_55

def AllocBody874_57 : StackLang.HolProg 64 :=
.seq AllocBody874_43 AllocBody874_56

def AllocBody874_58 : StackLang.HolProg 64 :=
.seq AllocBody874_42 AllocBody874_57

def AllocBody874_59 : StackLang.HolProg 64 :=
.seq AllocBody874_41 AllocBody874_58

def AllocBody874_60 : StackLang.HolProg 64 :=
.seq AllocBody874_40 AllocBody874_59

def AllocBody874_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64) AllocBody874_39 AllocBody874_60

def AllocBody874_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody874_63 : StackLang.HolProg 64 :=
.seq AllocBody874_61 AllocBody874_62

def AllocBody874_64 : StackLang.HolProg 64 :=
.seq AllocBody874_36 AllocBody874_63

def AllocBody874_65 : StackLang.HolProg 64 :=
.call (some (AllocBody874_35, 0, 874, 2)) (Sum.inl 873) (some (AllocBody874_64, 874, 3))

def AllocBody874_66 : StackLang.HolProg 64 :=
.seq AllocBody874_26 AllocBody874_65

def AllocBody874_67 : StackLang.HolProg 64 :=
.seq AllocBody874_25 AllocBody874_66

def AllocBody874_68 : StackLang.HolProg 64 :=
.seq AllocBody874_24 AllocBody874_67

def AllocBody874_69 : StackLang.HolProg 64 :=
.seq AllocBody874_5 AllocBody874_68

def AllocBody874_70 : StackLang.HolProg 64 :=
.seq AllocBody874_2 AllocBody874_69

def AllocBody874_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody874_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody874_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody874_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody874_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody874_76 : StackLang.HolProg 64 :=
.seq AllocBody874_74 AllocBody874_75

def AllocBody874_77 : StackLang.HolProg 64 :=
.seq AllocBody874_73 AllocBody874_76

def AllocBody874_78 : StackLang.HolProg 64 :=
.seq AllocBody874_72 AllocBody874_77

def AllocBody874_79 : StackLang.HolProg 64 :=
.seq AllocBody874_71 AllocBody874_78

def AllocBody874_80 : StackLang.HolProg 64 :=
.seq AllocBody874_70 AllocBody874_79

def AllocBody874_81 : StackLang.HolProg 64 :=
.seq AllocBody874_1 AllocBody874_80

def AllocBody874_82 : StackLang.HolProg 64 :=
.seq AllocBody874_0 AllocBody874_81

def Alloc874 : Nat × StackLang.HolProg 64 := (874, AllocBody874_82)
theorem Alloc874_eq : StackAlloc.progComp (874, raw874) = Alloc874 := by
  kernel_rfl
#print axioms Alloc874_eq
end InitECandidate.Proofs.BackendStages
