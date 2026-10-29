import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function628
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody628_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody628_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody628_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def rawBody628_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody628_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody628_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody628_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody628_7 : StackLang.HolProg 64 :=
.seq rawBody628_5 rawBody628_6

def rawBody628_8 : StackLang.HolProg 64 :=
.seq rawBody628_4 rawBody628_7

def rawBody628_9 : StackLang.HolProg 64 :=
.seq rawBody628_3 rawBody628_8

def rawBody628_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody628_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody628_9 rawBody628_10

def rawBody628_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody628_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody628_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody628_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody628_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody628_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1518500249#64)

def rawBody628_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody628_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody628_20 : StackLang.HolProg 64 :=
.seq rawBody628_18 rawBody628_19

def rawBody628_21 : StackLang.HolProg 64 :=
.seq rawBody628_17 rawBody628_20

def rawBody628_22 : StackLang.HolProg 64 :=
.seq rawBody628_16 rawBody628_21

def rawBody628_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody628_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody628_22 rawBody628_23

def rawBody628_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody628_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody628_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody628_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 48#64)

def rawBody628_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody628_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1859775393#64)

def rawBody628_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody628_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody628_33 : StackLang.HolProg 64 :=
.seq rawBody628_31 rawBody628_32

def rawBody628_34 : StackLang.HolProg 64 :=
.seq rawBody628_30 rawBody628_33

def rawBody628_35 : StackLang.HolProg 64 :=
.seq rawBody628_29 rawBody628_34

def rawBody628_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody628_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody628_35 rawBody628_36

def rawBody628_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody628_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody628_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody628_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def rawBody628_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody628_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2400959708#64)

def rawBody628_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody628_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody628_46 : StackLang.HolProg 64 :=
.seq rawBody628_44 rawBody628_45

def rawBody628_47 : StackLang.HolProg 64 :=
.seq rawBody628_43 rawBody628_46

def rawBody628_48 : StackLang.HolProg 64 :=
.seq rawBody628_42 rawBody628_47

def rawBody628_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody628_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody628_48 rawBody628_49

def rawBody628_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody628_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody628_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2840853838#64)

def rawBody628_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody628_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody628_56 : StackLang.HolProg 64 :=
.seq rawBody628_54 rawBody628_55

def rawBody628_57 : StackLang.HolProg 64 :=
.seq rawBody628_53 rawBody628_56

def rawBody628_58 : StackLang.HolProg 64 :=
.seq rawBody628_52 rawBody628_57

def rawBody628_59 : StackLang.HolProg 64 :=
.seq rawBody628_51 rawBody628_58

def rawBody628_60 : StackLang.HolProg 64 :=
.seq rawBody628_50 rawBody628_59

def rawBody628_61 : StackLang.HolProg 64 :=
.seq rawBody628_41 rawBody628_60

def rawBody628_62 : StackLang.HolProg 64 :=
.seq rawBody628_40 rawBody628_61

def rawBody628_63 : StackLang.HolProg 64 :=
.seq rawBody628_39 rawBody628_62

def rawBody628_64 : StackLang.HolProg 64 :=
.seq rawBody628_38 rawBody628_63

def rawBody628_65 : StackLang.HolProg 64 :=
.seq rawBody628_37 rawBody628_64

def rawBody628_66 : StackLang.HolProg 64 :=
.seq rawBody628_28 rawBody628_65

def rawBody628_67 : StackLang.HolProg 64 :=
.seq rawBody628_27 rawBody628_66

def rawBody628_68 : StackLang.HolProg 64 :=
.seq rawBody628_26 rawBody628_67

def rawBody628_69 : StackLang.HolProg 64 :=
.seq rawBody628_25 rawBody628_68

def rawBody628_70 : StackLang.HolProg 64 :=
.seq rawBody628_24 rawBody628_69

def rawBody628_71 : StackLang.HolProg 64 :=
.seq rawBody628_15 rawBody628_70

def rawBody628_72 : StackLang.HolProg 64 :=
.seq rawBody628_14 rawBody628_71

def rawBody628_73 : StackLang.HolProg 64 :=
.seq rawBody628_13 rawBody628_72

def rawBody628_74 : StackLang.HolProg 64 :=
.seq rawBody628_12 rawBody628_73

def rawBody628_75 : StackLang.HolProg 64 :=
.seq rawBody628_11 rawBody628_74

def rawBody628_76 : StackLang.HolProg 64 :=
.seq rawBody628_2 rawBody628_75

def rawBody628_77 : StackLang.HolProg 64 :=
.seq rawBody628_1 rawBody628_76

def rawBody628_78 : StackLang.HolProg 64 :=
.seq rawBody628_0 rawBody628_77

def raw628 : StackLang.HolProg 64 := rawBody628_78
theorem raw628_eq : StackRawCall.compTop RawInfo.rawInfo (function628 (.list [])).1 = raw628 := by
  kernel_rfl
#print axioms raw628_eq
end InitECandidate.Proofs.BackendStages
