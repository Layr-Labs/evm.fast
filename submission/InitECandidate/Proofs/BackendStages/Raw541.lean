import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function541
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody541_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody541_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody541_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 90#64)

def rawBody541_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody541_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody541_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody541_6 : StackLang.HolProg 64 :=
.seq rawBody541_4 rawBody541_5

def rawBody541_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody541_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody541_9 : StackLang.HolProg 64 :=
.seq rawBody541_7 rawBody541_8

def rawBody541_10 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody541_6 rawBody541_9

def rawBody541_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody541_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody541_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 128#64)

def rawBody541_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody541_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody541_16 : StackLang.HolProg 64 :=
.seq rawBody541_14 rawBody541_15

def rawBody541_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody541_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody541_19 : StackLang.HolProg 64 :=
.seq rawBody541_17 rawBody541_18

def rawBody541_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody541_16 rawBody541_19

def rawBody541_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody541_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody541_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody541_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody541_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody541_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody541_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 145#64)))

def rawBody541_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def rawBody541_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody541_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody541_31 : StackLang.HolProg 64 :=
.seq rawBody541_29 rawBody541_30

def rawBody541_32 : StackLang.HolProg 64 :=
.seq rawBody541_28 rawBody541_31

def rawBody541_33 : StackLang.HolProg 64 :=
.seq rawBody541_27 rawBody541_32

def rawBody541_34 : StackLang.HolProg 64 :=
.seq rawBody541_26 rawBody541_33

def rawBody541_35 : StackLang.HolProg 64 :=
.seq rawBody541_25 rawBody541_34

def rawBody541_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody541_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody541_35 rawBody541_36

def rawBody541_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody541_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody541_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def rawBody541_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody541_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody541_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody541_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody541_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody541_46 : StackLang.HolProg 64 :=
.seq rawBody541_44 rawBody541_45

def rawBody541_47 : StackLang.HolProg 64 :=
.seq rawBody541_43 rawBody541_46

def rawBody541_48 : StackLang.HolProg 64 :=
.seq rawBody541_42 rawBody541_47

def rawBody541_49 : StackLang.HolProg 64 :=
.seq rawBody541_41 rawBody541_48

def rawBody541_50 : StackLang.HolProg 64 :=
.seq rawBody541_40 rawBody541_49

def rawBody541_51 : StackLang.HolProg 64 :=
.seq rawBody541_39 rawBody541_50

def rawBody541_52 : StackLang.HolProg 64 :=
.seq rawBody541_38 rawBody541_51

def rawBody541_53 : StackLang.HolProg 64 :=
.seq rawBody541_37 rawBody541_52

def rawBody541_54 : StackLang.HolProg 64 :=
.seq rawBody541_24 rawBody541_53

def rawBody541_55 : StackLang.HolProg 64 :=
.seq rawBody541_23 rawBody541_54

def rawBody541_56 : StackLang.HolProg 64 :=
.seq rawBody541_22 rawBody541_55

def rawBody541_57 : StackLang.HolProg 64 :=
.seq rawBody541_21 rawBody541_56

def rawBody541_58 : StackLang.HolProg 64 :=
.seq rawBody541_20 rawBody541_57

def rawBody541_59 : StackLang.HolProg 64 :=
.seq rawBody541_13 rawBody541_58

def rawBody541_60 : StackLang.HolProg 64 :=
.seq rawBody541_12 rawBody541_59

def rawBody541_61 : StackLang.HolProg 64 :=
.seq rawBody541_11 rawBody541_60

def rawBody541_62 : StackLang.HolProg 64 :=
.seq rawBody541_10 rawBody541_61

def rawBody541_63 : StackLang.HolProg 64 :=
.seq rawBody541_3 rawBody541_62

def rawBody541_64 : StackLang.HolProg 64 :=
.seq rawBody541_2 rawBody541_63

def rawBody541_65 : StackLang.HolProg 64 :=
.seq rawBody541_1 rawBody541_64

def rawBody541_66 : StackLang.HolProg 64 :=
.seq rawBody541_0 rawBody541_65

def raw541 : StackLang.HolProg 64 := rawBody541_66
theorem raw541_eq : StackRawCall.compTop RawInfo.rawInfo (function541 (.list [])).1 = raw541 := by
  kernel_rfl
#print axioms raw541_eq
end InitECandidate.Proofs.BackendStages
