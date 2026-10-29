import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function103
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody103_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody103_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody103_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody103_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody103_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody103_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody103_6 : StackLang.HolProg 64 :=
.seq rawBody103_4 rawBody103_5

def rawBody103_7 : StackLang.HolProg 64 :=
.seq rawBody103_3 rawBody103_6

def rawBody103_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody103_9 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody103_7 rawBody103_8

def rawBody103_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody103_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody103_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody103_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody103_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody103_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody103_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody103_17 : StackLang.HolProg 64 :=
.seq rawBody103_15 rawBody103_16

def rawBody103_18 : StackLang.HolProg 64 :=
.seq rawBody103_14 rawBody103_17

def rawBody103_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody103_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody103_18 rawBody103_19

def rawBody103_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody103_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody103_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody103_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody103_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody103_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody103_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody103_28 : StackLang.HolProg 64 :=
.seq rawBody103_26 rawBody103_27

def rawBody103_29 : StackLang.HolProg 64 :=
.seq rawBody103_25 rawBody103_28

def rawBody103_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody103_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody103_29 rawBody103_30

def rawBody103_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody103_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody103_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody103_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody103_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody103_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody103_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody103_39 : StackLang.HolProg 64 :=
.seq rawBody103_37 rawBody103_38

def rawBody103_40 : StackLang.HolProg 64 :=
.seq rawBody103_36 rawBody103_39

def rawBody103_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody103_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody103_40 rawBody103_41

def rawBody103_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody103_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody103_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody103_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody103_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody103_48 : StackLang.HolProg 64 :=
.seq rawBody103_46 rawBody103_47

def rawBody103_49 : StackLang.HolProg 64 :=
.seq rawBody103_45 rawBody103_48

def rawBody103_50 : StackLang.HolProg 64 :=
.seq rawBody103_44 rawBody103_49

def rawBody103_51 : StackLang.HolProg 64 :=
.seq rawBody103_43 rawBody103_50

def rawBody103_52 : StackLang.HolProg 64 :=
.seq rawBody103_42 rawBody103_51

def rawBody103_53 : StackLang.HolProg 64 :=
.seq rawBody103_35 rawBody103_52

def rawBody103_54 : StackLang.HolProg 64 :=
.seq rawBody103_34 rawBody103_53

def rawBody103_55 : StackLang.HolProg 64 :=
.seq rawBody103_33 rawBody103_54

def rawBody103_56 : StackLang.HolProg 64 :=
.seq rawBody103_32 rawBody103_55

def rawBody103_57 : StackLang.HolProg 64 :=
.seq rawBody103_31 rawBody103_56

def rawBody103_58 : StackLang.HolProg 64 :=
.seq rawBody103_24 rawBody103_57

def rawBody103_59 : StackLang.HolProg 64 :=
.seq rawBody103_23 rawBody103_58

def rawBody103_60 : StackLang.HolProg 64 :=
.seq rawBody103_22 rawBody103_59

def rawBody103_61 : StackLang.HolProg 64 :=
.seq rawBody103_21 rawBody103_60

def rawBody103_62 : StackLang.HolProg 64 :=
.seq rawBody103_20 rawBody103_61

def rawBody103_63 : StackLang.HolProg 64 :=
.seq rawBody103_13 rawBody103_62

def rawBody103_64 : StackLang.HolProg 64 :=
.seq rawBody103_12 rawBody103_63

def rawBody103_65 : StackLang.HolProg 64 :=
.seq rawBody103_11 rawBody103_64

def rawBody103_66 : StackLang.HolProg 64 :=
.seq rawBody103_10 rawBody103_65

def rawBody103_67 : StackLang.HolProg 64 :=
.seq rawBody103_9 rawBody103_66

def rawBody103_68 : StackLang.HolProg 64 :=
.seq rawBody103_2 rawBody103_67

def rawBody103_69 : StackLang.HolProg 64 :=
.seq rawBody103_1 rawBody103_68

def rawBody103_70 : StackLang.HolProg 64 :=
.seq rawBody103_0 rawBody103_69

def raw103 : StackLang.HolProg 64 := rawBody103_70
theorem raw103_eq : StackRawCall.compTop RawInfo.rawInfo (function103 (.list [])).1 = raw103 := by
  kernel_rfl
#print axioms raw103_eq
end InitECandidate.Proofs.BackendStages
