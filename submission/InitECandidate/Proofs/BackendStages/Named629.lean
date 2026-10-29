import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed629
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody629_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody629_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody629_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 16#64)

def NamedBody629_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody629_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1352829926#64)

def NamedBody629_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody629_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody629_7 : StackLang.HolProg 64 :=
.seq NamedBody629_5 NamedBody629_6

def NamedBody629_8 : StackLang.HolProg 64 :=
.seq NamedBody629_4 NamedBody629_7

def NamedBody629_9 : StackLang.HolProg 64 :=
.seq NamedBody629_3 NamedBody629_8

def NamedBody629_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody629_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody629_9 NamedBody629_10

def NamedBody629_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody629_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody629_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody629_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody629_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody629_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1548603684#64)

def NamedBody629_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody629_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody629_20 : StackLang.HolProg 64 :=
.seq NamedBody629_18 NamedBody629_19

def NamedBody629_21 : StackLang.HolProg 64 :=
.seq NamedBody629_17 NamedBody629_20

def NamedBody629_22 : StackLang.HolProg 64 :=
.seq NamedBody629_16 NamedBody629_21

def NamedBody629_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody629_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody629_22 NamedBody629_23

def NamedBody629_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody629_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody629_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody629_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 48#64)

def NamedBody629_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody629_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1836072691#64)

def NamedBody629_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody629_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody629_33 : StackLang.HolProg 64 :=
.seq NamedBody629_31 NamedBody629_32

def NamedBody629_34 : StackLang.HolProg 64 :=
.seq NamedBody629_30 NamedBody629_33

def NamedBody629_35 : StackLang.HolProg 64 :=
.seq NamedBody629_29 NamedBody629_34

def NamedBody629_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody629_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody629_35 NamedBody629_36

def NamedBody629_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody629_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody629_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody629_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody629_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody629_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2053994217#64)

def NamedBody629_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody629_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody629_46 : StackLang.HolProg 64 :=
.seq NamedBody629_44 NamedBody629_45

def NamedBody629_47 : StackLang.HolProg 64 :=
.seq NamedBody629_43 NamedBody629_46

def NamedBody629_48 : StackLang.HolProg 64 :=
.seq NamedBody629_42 NamedBody629_47

def NamedBody629_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody629_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody629_48 NamedBody629_49

def NamedBody629_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody629_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody629_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody629_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody629_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody629_56 : StackLang.HolProg 64 :=
.seq NamedBody629_54 NamedBody629_55

def NamedBody629_57 : StackLang.HolProg 64 :=
.seq NamedBody629_53 NamedBody629_56

def NamedBody629_58 : StackLang.HolProg 64 :=
.seq NamedBody629_52 NamedBody629_57

def NamedBody629_59 : StackLang.HolProg 64 :=
.seq NamedBody629_51 NamedBody629_58

def NamedBody629_60 : StackLang.HolProg 64 :=
.seq NamedBody629_50 NamedBody629_59

def NamedBody629_61 : StackLang.HolProg 64 :=
.seq NamedBody629_41 NamedBody629_60

def NamedBody629_62 : StackLang.HolProg 64 :=
.seq NamedBody629_40 NamedBody629_61

def NamedBody629_63 : StackLang.HolProg 64 :=
.seq NamedBody629_39 NamedBody629_62

def NamedBody629_64 : StackLang.HolProg 64 :=
.seq NamedBody629_38 NamedBody629_63

def NamedBody629_65 : StackLang.HolProg 64 :=
.seq NamedBody629_37 NamedBody629_64

def NamedBody629_66 : StackLang.HolProg 64 :=
.seq NamedBody629_28 NamedBody629_65

def NamedBody629_67 : StackLang.HolProg 64 :=
.seq NamedBody629_27 NamedBody629_66

def NamedBody629_68 : StackLang.HolProg 64 :=
.seq NamedBody629_26 NamedBody629_67

def NamedBody629_69 : StackLang.HolProg 64 :=
.seq NamedBody629_25 NamedBody629_68

def NamedBody629_70 : StackLang.HolProg 64 :=
.seq NamedBody629_24 NamedBody629_69

def NamedBody629_71 : StackLang.HolProg 64 :=
.seq NamedBody629_15 NamedBody629_70

def NamedBody629_72 : StackLang.HolProg 64 :=
.seq NamedBody629_14 NamedBody629_71

def NamedBody629_73 : StackLang.HolProg 64 :=
.seq NamedBody629_13 NamedBody629_72

def NamedBody629_74 : StackLang.HolProg 64 :=
.seq NamedBody629_12 NamedBody629_73

def NamedBody629_75 : StackLang.HolProg 64 :=
.seq NamedBody629_11 NamedBody629_74

def NamedBody629_76 : StackLang.HolProg 64 :=
.seq NamedBody629_2 NamedBody629_75

def NamedBody629_77 : StackLang.HolProg 64 :=
.seq NamedBody629_1 NamedBody629_76

def NamedBody629_78 : StackLang.HolProg 64 :=
.seq NamedBody629_0 NamedBody629_77

def Named629 : Nat × StackLang.HolProg 64 := (629, NamedBody629_78)
theorem Named629_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed629 = Named629 := by
  kernel_rfl
#print axioms Named629_eq
end InitECandidate.Proofs.BackendStages
