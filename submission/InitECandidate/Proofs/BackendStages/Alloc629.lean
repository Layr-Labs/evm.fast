import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw629
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody629_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody629_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody629_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def AllocBody629_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody629_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1352829926#64)

def AllocBody629_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody629_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody629_7 : StackLang.HolProg 64 :=
.seq AllocBody629_5 AllocBody629_6

def AllocBody629_8 : StackLang.HolProg 64 :=
.seq AllocBody629_4 AllocBody629_7

def AllocBody629_9 : StackLang.HolProg 64 :=
.seq AllocBody629_3 AllocBody629_8

def AllocBody629_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody629_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody629_9 AllocBody629_10

def AllocBody629_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody629_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody629_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody629_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody629_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody629_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1548603684#64)

def AllocBody629_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody629_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody629_20 : StackLang.HolProg 64 :=
.seq AllocBody629_18 AllocBody629_19

def AllocBody629_21 : StackLang.HolProg 64 :=
.seq AllocBody629_17 AllocBody629_20

def AllocBody629_22 : StackLang.HolProg 64 :=
.seq AllocBody629_16 AllocBody629_21

def AllocBody629_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody629_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody629_22 AllocBody629_23

def AllocBody629_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody629_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody629_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody629_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 48#64)

def AllocBody629_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody629_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1836072691#64)

def AllocBody629_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody629_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody629_33 : StackLang.HolProg 64 :=
.seq AllocBody629_31 AllocBody629_32

def AllocBody629_34 : StackLang.HolProg 64 :=
.seq AllocBody629_30 AllocBody629_33

def AllocBody629_35 : StackLang.HolProg 64 :=
.seq AllocBody629_29 AllocBody629_34

def AllocBody629_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody629_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody629_35 AllocBody629_36

def AllocBody629_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody629_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody629_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody629_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody629_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody629_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2053994217#64)

def AllocBody629_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody629_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody629_46 : StackLang.HolProg 64 :=
.seq AllocBody629_44 AllocBody629_45

def AllocBody629_47 : StackLang.HolProg 64 :=
.seq AllocBody629_43 AllocBody629_46

def AllocBody629_48 : StackLang.HolProg 64 :=
.seq AllocBody629_42 AllocBody629_47

def AllocBody629_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody629_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody629_48 AllocBody629_49

def AllocBody629_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody629_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody629_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody629_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody629_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody629_56 : StackLang.HolProg 64 :=
.seq AllocBody629_54 AllocBody629_55

def AllocBody629_57 : StackLang.HolProg 64 :=
.seq AllocBody629_53 AllocBody629_56

def AllocBody629_58 : StackLang.HolProg 64 :=
.seq AllocBody629_52 AllocBody629_57

def AllocBody629_59 : StackLang.HolProg 64 :=
.seq AllocBody629_51 AllocBody629_58

def AllocBody629_60 : StackLang.HolProg 64 :=
.seq AllocBody629_50 AllocBody629_59

def AllocBody629_61 : StackLang.HolProg 64 :=
.seq AllocBody629_41 AllocBody629_60

def AllocBody629_62 : StackLang.HolProg 64 :=
.seq AllocBody629_40 AllocBody629_61

def AllocBody629_63 : StackLang.HolProg 64 :=
.seq AllocBody629_39 AllocBody629_62

def AllocBody629_64 : StackLang.HolProg 64 :=
.seq AllocBody629_38 AllocBody629_63

def AllocBody629_65 : StackLang.HolProg 64 :=
.seq AllocBody629_37 AllocBody629_64

def AllocBody629_66 : StackLang.HolProg 64 :=
.seq AllocBody629_28 AllocBody629_65

def AllocBody629_67 : StackLang.HolProg 64 :=
.seq AllocBody629_27 AllocBody629_66

def AllocBody629_68 : StackLang.HolProg 64 :=
.seq AllocBody629_26 AllocBody629_67

def AllocBody629_69 : StackLang.HolProg 64 :=
.seq AllocBody629_25 AllocBody629_68

def AllocBody629_70 : StackLang.HolProg 64 :=
.seq AllocBody629_24 AllocBody629_69

def AllocBody629_71 : StackLang.HolProg 64 :=
.seq AllocBody629_15 AllocBody629_70

def AllocBody629_72 : StackLang.HolProg 64 :=
.seq AllocBody629_14 AllocBody629_71

def AllocBody629_73 : StackLang.HolProg 64 :=
.seq AllocBody629_13 AllocBody629_72

def AllocBody629_74 : StackLang.HolProg 64 :=
.seq AllocBody629_12 AllocBody629_73

def AllocBody629_75 : StackLang.HolProg 64 :=
.seq AllocBody629_11 AllocBody629_74

def AllocBody629_76 : StackLang.HolProg 64 :=
.seq AllocBody629_2 AllocBody629_75

def AllocBody629_77 : StackLang.HolProg 64 :=
.seq AllocBody629_1 AllocBody629_76

def AllocBody629_78 : StackLang.HolProg 64 :=
.seq AllocBody629_0 AllocBody629_77

def Alloc629 : Nat × StackLang.HolProg 64 := (629, AllocBody629_78)
theorem Alloc629_eq : StackAlloc.progComp (629, raw629) = Alloc629 := by
  kernel_rfl
#print axioms Alloc629_eq
end InitECandidate.Proofs.BackendStages
