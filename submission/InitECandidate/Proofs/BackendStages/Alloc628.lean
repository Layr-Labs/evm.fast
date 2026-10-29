import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw628
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody628_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody628_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody628_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def AllocBody628_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody628_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody628_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody628_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody628_7 : StackLang.HolProg 64 :=
.seq AllocBody628_5 AllocBody628_6

def AllocBody628_8 : StackLang.HolProg 64 :=
.seq AllocBody628_4 AllocBody628_7

def AllocBody628_9 : StackLang.HolProg 64 :=
.seq AllocBody628_3 AllocBody628_8

def AllocBody628_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody628_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody628_9 AllocBody628_10

def AllocBody628_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody628_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody628_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody628_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody628_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody628_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1518500249#64)

def AllocBody628_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody628_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody628_20 : StackLang.HolProg 64 :=
.seq AllocBody628_18 AllocBody628_19

def AllocBody628_21 : StackLang.HolProg 64 :=
.seq AllocBody628_17 AllocBody628_20

def AllocBody628_22 : StackLang.HolProg 64 :=
.seq AllocBody628_16 AllocBody628_21

def AllocBody628_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody628_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody628_22 AllocBody628_23

def AllocBody628_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody628_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody628_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody628_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 48#64)

def AllocBody628_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody628_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1859775393#64)

def AllocBody628_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody628_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody628_33 : StackLang.HolProg 64 :=
.seq AllocBody628_31 AllocBody628_32

def AllocBody628_34 : StackLang.HolProg 64 :=
.seq AllocBody628_30 AllocBody628_33

def AllocBody628_35 : StackLang.HolProg 64 :=
.seq AllocBody628_29 AllocBody628_34

def AllocBody628_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody628_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody628_35 AllocBody628_36

def AllocBody628_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody628_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody628_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody628_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody628_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody628_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2400959708#64)

def AllocBody628_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody628_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody628_46 : StackLang.HolProg 64 :=
.seq AllocBody628_44 AllocBody628_45

def AllocBody628_47 : StackLang.HolProg 64 :=
.seq AllocBody628_43 AllocBody628_46

def AllocBody628_48 : StackLang.HolProg 64 :=
.seq AllocBody628_42 AllocBody628_47

def AllocBody628_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody628_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody628_48 AllocBody628_49

def AllocBody628_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody628_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody628_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2840853838#64)

def AllocBody628_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody628_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody628_56 : StackLang.HolProg 64 :=
.seq AllocBody628_54 AllocBody628_55

def AllocBody628_57 : StackLang.HolProg 64 :=
.seq AllocBody628_53 AllocBody628_56

def AllocBody628_58 : StackLang.HolProg 64 :=
.seq AllocBody628_52 AllocBody628_57

def AllocBody628_59 : StackLang.HolProg 64 :=
.seq AllocBody628_51 AllocBody628_58

def AllocBody628_60 : StackLang.HolProg 64 :=
.seq AllocBody628_50 AllocBody628_59

def AllocBody628_61 : StackLang.HolProg 64 :=
.seq AllocBody628_41 AllocBody628_60

def AllocBody628_62 : StackLang.HolProg 64 :=
.seq AllocBody628_40 AllocBody628_61

def AllocBody628_63 : StackLang.HolProg 64 :=
.seq AllocBody628_39 AllocBody628_62

def AllocBody628_64 : StackLang.HolProg 64 :=
.seq AllocBody628_38 AllocBody628_63

def AllocBody628_65 : StackLang.HolProg 64 :=
.seq AllocBody628_37 AllocBody628_64

def AllocBody628_66 : StackLang.HolProg 64 :=
.seq AllocBody628_28 AllocBody628_65

def AllocBody628_67 : StackLang.HolProg 64 :=
.seq AllocBody628_27 AllocBody628_66

def AllocBody628_68 : StackLang.HolProg 64 :=
.seq AllocBody628_26 AllocBody628_67

def AllocBody628_69 : StackLang.HolProg 64 :=
.seq AllocBody628_25 AllocBody628_68

def AllocBody628_70 : StackLang.HolProg 64 :=
.seq AllocBody628_24 AllocBody628_69

def AllocBody628_71 : StackLang.HolProg 64 :=
.seq AllocBody628_15 AllocBody628_70

def AllocBody628_72 : StackLang.HolProg 64 :=
.seq AllocBody628_14 AllocBody628_71

def AllocBody628_73 : StackLang.HolProg 64 :=
.seq AllocBody628_13 AllocBody628_72

def AllocBody628_74 : StackLang.HolProg 64 :=
.seq AllocBody628_12 AllocBody628_73

def AllocBody628_75 : StackLang.HolProg 64 :=
.seq AllocBody628_11 AllocBody628_74

def AllocBody628_76 : StackLang.HolProg 64 :=
.seq AllocBody628_2 AllocBody628_75

def AllocBody628_77 : StackLang.HolProg 64 :=
.seq AllocBody628_1 AllocBody628_76

def AllocBody628_78 : StackLang.HolProg 64 :=
.seq AllocBody628_0 AllocBody628_77

def Alloc628 : Nat × StackLang.HolProg 64 := (628, AllocBody628_78)
theorem Alloc628_eq : StackAlloc.progComp (628, raw628) = Alloc628 := by
  kernel_rfl
#print axioms Alloc628_eq
end InitECandidate.Proofs.BackendStages
