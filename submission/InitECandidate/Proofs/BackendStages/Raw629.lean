import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function629
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody629_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody629_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody629_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def rawBody629_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody629_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1352829926#64)

def rawBody629_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody629_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody629_7 : StackLang.HolProg 64 :=
.seq rawBody629_5 rawBody629_6

def rawBody629_8 : StackLang.HolProg 64 :=
.seq rawBody629_4 rawBody629_7

def rawBody629_9 : StackLang.HolProg 64 :=
.seq rawBody629_3 rawBody629_8

def rawBody629_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody629_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody629_9 rawBody629_10

def rawBody629_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody629_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody629_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody629_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody629_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody629_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1548603684#64)

def rawBody629_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody629_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody629_20 : StackLang.HolProg 64 :=
.seq rawBody629_18 rawBody629_19

def rawBody629_21 : StackLang.HolProg 64 :=
.seq rawBody629_17 rawBody629_20

def rawBody629_22 : StackLang.HolProg 64 :=
.seq rawBody629_16 rawBody629_21

def rawBody629_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody629_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody629_22 rawBody629_23

def rawBody629_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody629_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody629_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody629_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 48#64)

def rawBody629_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody629_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1836072691#64)

def rawBody629_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody629_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody629_33 : StackLang.HolProg 64 :=
.seq rawBody629_31 rawBody629_32

def rawBody629_34 : StackLang.HolProg 64 :=
.seq rawBody629_30 rawBody629_33

def rawBody629_35 : StackLang.HolProg 64 :=
.seq rawBody629_29 rawBody629_34

def rawBody629_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody629_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody629_35 rawBody629_36

def rawBody629_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody629_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody629_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody629_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def rawBody629_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody629_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2053994217#64)

def rawBody629_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody629_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody629_46 : StackLang.HolProg 64 :=
.seq rawBody629_44 rawBody629_45

def rawBody629_47 : StackLang.HolProg 64 :=
.seq rawBody629_43 rawBody629_46

def rawBody629_48 : StackLang.HolProg 64 :=
.seq rawBody629_42 rawBody629_47

def rawBody629_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody629_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody629_48 rawBody629_49

def rawBody629_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody629_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody629_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody629_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody629_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody629_56 : StackLang.HolProg 64 :=
.seq rawBody629_54 rawBody629_55

def rawBody629_57 : StackLang.HolProg 64 :=
.seq rawBody629_53 rawBody629_56

def rawBody629_58 : StackLang.HolProg 64 :=
.seq rawBody629_52 rawBody629_57

def rawBody629_59 : StackLang.HolProg 64 :=
.seq rawBody629_51 rawBody629_58

def rawBody629_60 : StackLang.HolProg 64 :=
.seq rawBody629_50 rawBody629_59

def rawBody629_61 : StackLang.HolProg 64 :=
.seq rawBody629_41 rawBody629_60

def rawBody629_62 : StackLang.HolProg 64 :=
.seq rawBody629_40 rawBody629_61

def rawBody629_63 : StackLang.HolProg 64 :=
.seq rawBody629_39 rawBody629_62

def rawBody629_64 : StackLang.HolProg 64 :=
.seq rawBody629_38 rawBody629_63

def rawBody629_65 : StackLang.HolProg 64 :=
.seq rawBody629_37 rawBody629_64

def rawBody629_66 : StackLang.HolProg 64 :=
.seq rawBody629_28 rawBody629_65

def rawBody629_67 : StackLang.HolProg 64 :=
.seq rawBody629_27 rawBody629_66

def rawBody629_68 : StackLang.HolProg 64 :=
.seq rawBody629_26 rawBody629_67

def rawBody629_69 : StackLang.HolProg 64 :=
.seq rawBody629_25 rawBody629_68

def rawBody629_70 : StackLang.HolProg 64 :=
.seq rawBody629_24 rawBody629_69

def rawBody629_71 : StackLang.HolProg 64 :=
.seq rawBody629_15 rawBody629_70

def rawBody629_72 : StackLang.HolProg 64 :=
.seq rawBody629_14 rawBody629_71

def rawBody629_73 : StackLang.HolProg 64 :=
.seq rawBody629_13 rawBody629_72

def rawBody629_74 : StackLang.HolProg 64 :=
.seq rawBody629_12 rawBody629_73

def rawBody629_75 : StackLang.HolProg 64 :=
.seq rawBody629_11 rawBody629_74

def rawBody629_76 : StackLang.HolProg 64 :=
.seq rawBody629_2 rawBody629_75

def rawBody629_77 : StackLang.HolProg 64 :=
.seq rawBody629_1 rawBody629_76

def rawBody629_78 : StackLang.HolProg 64 :=
.seq rawBody629_0 rawBody629_77

def raw629 : StackLang.HolProg 64 := rawBody629_78
theorem raw629_eq : StackRawCall.compTop RawInfo.rawInfo (function629 (.list [])).1 = raw629 := by
  kernel_rfl
#print axioms raw629_eq
end InitECandidate.Proofs.BackendStages
