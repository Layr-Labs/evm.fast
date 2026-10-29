import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw679
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody679_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody679_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody679_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody679_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody679_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody679_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody679_6 : StackLang.HolProg 64 :=
.seq AllocBody679_4 AllocBody679_5

def AllocBody679_7 : StackLang.HolProg 64 :=
.seq AllocBody679_3 AllocBody679_6

def AllocBody679_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody679_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2793#64)

def AllocBody679_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody679_11 : StackLang.HolProg 64 :=
.seq AllocBody679_9 AllocBody679_10

def AllocBody679_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody679_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody679_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody679_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 679 3

def AllocBody679_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody679_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody679_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody679_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody679_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody679_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody679_22 : StackLang.HolProg 64 :=
.seq AllocBody679_20 AllocBody679_21

def AllocBody679_23 : StackLang.HolProg 64 :=
.seq AllocBody679_19 AllocBody679_22

def AllocBody679_24 : StackLang.HolProg 64 :=
.seq AllocBody679_18 AllocBody679_23

def AllocBody679_25 : StackLang.HolProg 64 :=
.seq AllocBody679_17 AllocBody679_24

def AllocBody679_26 : StackLang.HolProg 64 :=
.seq AllocBody679_16 AllocBody679_25

def AllocBody679_27 : StackLang.HolProg 64 :=
.seq AllocBody679_15 AllocBody679_26

def AllocBody679_28 : StackLang.HolProg 64 :=
.seq AllocBody679_14 AllocBody679_27

def AllocBody679_29 : StackLang.HolProg 64 :=
.seq AllocBody679_13 AllocBody679_28

def AllocBody679_30 : StackLang.HolProg 64 :=
.seq AllocBody679_12 AllocBody679_29

def AllocBody679_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody679_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody679_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody679_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody679_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody679_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody679_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody679_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody679_39 : StackLang.HolProg 64 :=
.seq AllocBody679_37 AllocBody679_38

def AllocBody679_40 : StackLang.HolProg 64 :=
.seq AllocBody679_36 AllocBody679_39

def AllocBody679_41 : StackLang.HolProg 64 :=
.seq AllocBody679_35 AllocBody679_40

def AllocBody679_42 : StackLang.HolProg 64 :=
.seq AllocBody679_34 AllocBody679_41

def AllocBody679_43 : StackLang.HolProg 64 :=
.seq AllocBody679_33 AllocBody679_42

def AllocBody679_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody679_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody679_46 : StackLang.HolProg 64 :=
.seq AllocBody679_44 AllocBody679_45

def AllocBody679_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody679_48 : StackLang.HolProg 64 :=
.seq AllocBody679_46 AllocBody679_47

def AllocBody679_49 : StackLang.HolProg 64 :=
.call (some (AllocBody679_43, 0, 679, 2)) (Sum.inl 78) (some (AllocBody679_48, 679, 3))

def AllocBody679_50 : StackLang.HolProg 64 :=
.seq AllocBody679_32 AllocBody679_49

def AllocBody679_51 : StackLang.HolProg 64 :=
.seq AllocBody679_31 AllocBody679_50

def AllocBody679_52 : StackLang.HolProg 64 :=
.seq AllocBody679_30 AllocBody679_51

def AllocBody679_53 : StackLang.HolProg 64 :=
.seq AllocBody679_11 AllocBody679_52

def AllocBody679_54 : StackLang.HolProg 64 :=
.seq AllocBody679_8 AllocBody679_53

def AllocBody679_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody679_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody679_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 15230403791020821917#64)

def AllocBody679_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody679_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody679_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 754611498739239741#64)

def AllocBody679_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody679_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody679_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7381016538464732716#64)

def AllocBody679_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody679_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody679_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1011752739694698287#64)

def AllocBody679_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody679_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody679_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody679_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody679_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody679_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody679_73 : StackLang.HolProg 64 :=
.seq AllocBody679_71 AllocBody679_72

def AllocBody679_74 : StackLang.HolProg 64 :=
.seq AllocBody679_70 AllocBody679_73

def AllocBody679_75 : StackLang.HolProg 64 :=
.seq AllocBody679_69 AllocBody679_74

def AllocBody679_76 : StackLang.HolProg 64 :=
.seq AllocBody679_68 AllocBody679_75

def AllocBody679_77 : StackLang.HolProg 64 :=
.seq AllocBody679_67 AllocBody679_76

def AllocBody679_78 : StackLang.HolProg 64 :=
.seq AllocBody679_66 AllocBody679_77

def AllocBody679_79 : StackLang.HolProg 64 :=
.seq AllocBody679_65 AllocBody679_78

def AllocBody679_80 : StackLang.HolProg 64 :=
.seq AllocBody679_64 AllocBody679_79

def AllocBody679_81 : StackLang.HolProg 64 :=
.seq AllocBody679_63 AllocBody679_80

def AllocBody679_82 : StackLang.HolProg 64 :=
.seq AllocBody679_62 AllocBody679_81

def AllocBody679_83 : StackLang.HolProg 64 :=
.seq AllocBody679_61 AllocBody679_82

def AllocBody679_84 : StackLang.HolProg 64 :=
.seq AllocBody679_60 AllocBody679_83

def AllocBody679_85 : StackLang.HolProg 64 :=
.seq AllocBody679_59 AllocBody679_84

def AllocBody679_86 : StackLang.HolProg 64 :=
.seq AllocBody679_58 AllocBody679_85

def AllocBody679_87 : StackLang.HolProg 64 :=
.seq AllocBody679_57 AllocBody679_86

def AllocBody679_88 : StackLang.HolProg 64 :=
.seq AllocBody679_56 AllocBody679_87

def AllocBody679_89 : StackLang.HolProg 64 :=
.seq AllocBody679_55 AllocBody679_88

def AllocBody679_90 : StackLang.HolProg 64 :=
.seq AllocBody679_54 AllocBody679_89

def AllocBody679_91 : StackLang.HolProg 64 :=
.seq AllocBody679_7 AllocBody679_90

def AllocBody679_92 : StackLang.HolProg 64 :=
.seq AllocBody679_2 AllocBody679_91

def AllocBody679_93 : StackLang.HolProg 64 :=
.seq AllocBody679_1 AllocBody679_92

def AllocBody679_94 : StackLang.HolProg 64 :=
.seq AllocBody679_0 AllocBody679_93

def Alloc679 : Nat × StackLang.HolProg 64 := (679, AllocBody679_94)
theorem Alloc679_eq : StackAlloc.progComp (679, raw679) = Alloc679 := by
  kernel_rfl
#print axioms Alloc679_eq
end InitECandidate.Proofs.BackendStages
