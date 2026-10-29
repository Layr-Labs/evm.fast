import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed628
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody628_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody628_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody628_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 16#64)

def NamedBody628_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody628_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody628_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody628_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody628_7 : StackLang.HolProg 64 :=
.seq NamedBody628_5 NamedBody628_6

def NamedBody628_8 : StackLang.HolProg 64 :=
.seq NamedBody628_4 NamedBody628_7

def NamedBody628_9 : StackLang.HolProg 64 :=
.seq NamedBody628_3 NamedBody628_8

def NamedBody628_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody628_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody628_9 NamedBody628_10

def NamedBody628_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody628_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody628_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody628_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody628_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody628_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1518500249#64)

def NamedBody628_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody628_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody628_20 : StackLang.HolProg 64 :=
.seq NamedBody628_18 NamedBody628_19

def NamedBody628_21 : StackLang.HolProg 64 :=
.seq NamedBody628_17 NamedBody628_20

def NamedBody628_22 : StackLang.HolProg 64 :=
.seq NamedBody628_16 NamedBody628_21

def NamedBody628_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody628_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody628_22 NamedBody628_23

def NamedBody628_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody628_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody628_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody628_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 48#64)

def NamedBody628_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody628_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1859775393#64)

def NamedBody628_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody628_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody628_33 : StackLang.HolProg 64 :=
.seq NamedBody628_31 NamedBody628_32

def NamedBody628_34 : StackLang.HolProg 64 :=
.seq NamedBody628_30 NamedBody628_33

def NamedBody628_35 : StackLang.HolProg 64 :=
.seq NamedBody628_29 NamedBody628_34

def NamedBody628_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody628_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody628_35 NamedBody628_36

def NamedBody628_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody628_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody628_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody628_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody628_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody628_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2400959708#64)

def NamedBody628_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody628_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody628_46 : StackLang.HolProg 64 :=
.seq NamedBody628_44 NamedBody628_45

def NamedBody628_47 : StackLang.HolProg 64 :=
.seq NamedBody628_43 NamedBody628_46

def NamedBody628_48 : StackLang.HolProg 64 :=
.seq NamedBody628_42 NamedBody628_47

def NamedBody628_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody628_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody628_48 NamedBody628_49

def NamedBody628_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody628_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody628_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2840853838#64)

def NamedBody628_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody628_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody628_56 : StackLang.HolProg 64 :=
.seq NamedBody628_54 NamedBody628_55

def NamedBody628_57 : StackLang.HolProg 64 :=
.seq NamedBody628_53 NamedBody628_56

def NamedBody628_58 : StackLang.HolProg 64 :=
.seq NamedBody628_52 NamedBody628_57

def NamedBody628_59 : StackLang.HolProg 64 :=
.seq NamedBody628_51 NamedBody628_58

def NamedBody628_60 : StackLang.HolProg 64 :=
.seq NamedBody628_50 NamedBody628_59

def NamedBody628_61 : StackLang.HolProg 64 :=
.seq NamedBody628_41 NamedBody628_60

def NamedBody628_62 : StackLang.HolProg 64 :=
.seq NamedBody628_40 NamedBody628_61

def NamedBody628_63 : StackLang.HolProg 64 :=
.seq NamedBody628_39 NamedBody628_62

def NamedBody628_64 : StackLang.HolProg 64 :=
.seq NamedBody628_38 NamedBody628_63

def NamedBody628_65 : StackLang.HolProg 64 :=
.seq NamedBody628_37 NamedBody628_64

def NamedBody628_66 : StackLang.HolProg 64 :=
.seq NamedBody628_28 NamedBody628_65

def NamedBody628_67 : StackLang.HolProg 64 :=
.seq NamedBody628_27 NamedBody628_66

def NamedBody628_68 : StackLang.HolProg 64 :=
.seq NamedBody628_26 NamedBody628_67

def NamedBody628_69 : StackLang.HolProg 64 :=
.seq NamedBody628_25 NamedBody628_68

def NamedBody628_70 : StackLang.HolProg 64 :=
.seq NamedBody628_24 NamedBody628_69

def NamedBody628_71 : StackLang.HolProg 64 :=
.seq NamedBody628_15 NamedBody628_70

def NamedBody628_72 : StackLang.HolProg 64 :=
.seq NamedBody628_14 NamedBody628_71

def NamedBody628_73 : StackLang.HolProg 64 :=
.seq NamedBody628_13 NamedBody628_72

def NamedBody628_74 : StackLang.HolProg 64 :=
.seq NamedBody628_12 NamedBody628_73

def NamedBody628_75 : StackLang.HolProg 64 :=
.seq NamedBody628_11 NamedBody628_74

def NamedBody628_76 : StackLang.HolProg 64 :=
.seq NamedBody628_2 NamedBody628_75

def NamedBody628_77 : StackLang.HolProg 64 :=
.seq NamedBody628_1 NamedBody628_76

def NamedBody628_78 : StackLang.HolProg 64 :=
.seq NamedBody628_0 NamedBody628_77

def Named628 : Nat × StackLang.HolProg 64 := (628, NamedBody628_78)
theorem Named628_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed628 = Named628 := by
  kernel_rfl
#print axioms Named628_eq
end InitECandidate.Proofs.BackendStages
