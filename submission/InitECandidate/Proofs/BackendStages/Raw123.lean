import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function123
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody123_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody123_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody123_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody123_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody123_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 32#64)

def rawBody123_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody123_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody123_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody123_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody123_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody123_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody123_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody123_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody123_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody123_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody123_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody123_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody123_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody123_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody123_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody123_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody123_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody123_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody123_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 1#64)

def rawBody123_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody123_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody123_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody123_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody123_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody123_29 : StackLang.HolProg 64 :=
.seq rawBody123_27 rawBody123_28

def rawBody123_30 : StackLang.HolProg 64 :=
.seq rawBody123_26 rawBody123_29

def rawBody123_31 : StackLang.HolProg 64 :=
.seq rawBody123_25 rawBody123_30

def rawBody123_32 : StackLang.HolProg 64 :=
.seq rawBody123_24 rawBody123_31

def rawBody123_33 : StackLang.HolProg 64 :=
.seq rawBody123_23 rawBody123_32

def rawBody123_34 : StackLang.HolProg 64 :=
.seq rawBody123_22 rawBody123_33

def rawBody123_35 : StackLang.HolProg 64 :=
.seq rawBody123_21 rawBody123_34

def rawBody123_36 : StackLang.HolProg 64 :=
.seq rawBody123_20 rawBody123_35

def rawBody123_37 : StackLang.HolProg 64 :=
.seq rawBody123_19 rawBody123_36

def rawBody123_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody123_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody123_40 : StackLang.HolProg 64 :=
.seq rawBody123_38 rawBody123_39

def rawBody123_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody123_37 rawBody123_40

def rawBody123_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody123_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody123_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody123_45 : StackLang.HolProg 64 :=
.seq rawBody123_43 rawBody123_44

def rawBody123_46 : StackLang.HolProg 64 :=
.seq rawBody123_42 rawBody123_45

def rawBody123_47 : StackLang.HolProg 64 :=
.seq rawBody123_41 rawBody123_46

def rawBody123_48 : StackLang.HolProg 64 :=
.seq rawBody123_18 rawBody123_47

def rawBody123_49 : StackLang.HolProg 64 :=
.seq rawBody123_17 rawBody123_48

def rawBody123_50 : StackLang.HolProg 64 :=
.seq rawBody123_16 rawBody123_49

def rawBody123_51 : StackLang.HolProg 64 :=
.seq rawBody123_15 rawBody123_50

def rawBody123_52 : StackLang.HolProg 64 :=
.seq rawBody123_14 rawBody123_51

def rawBody123_53 : StackLang.HolProg 64 :=
.seq rawBody123_13 rawBody123_52

def rawBody123_54 : StackLang.HolProg 64 :=
.seq rawBody123_12 rawBody123_53

def rawBody123_55 : StackLang.HolProg 64 :=
.seq rawBody123_11 rawBody123_54

def rawBody123_56 : StackLang.HolProg 64 :=
.seq rawBody123_10 rawBody123_55

def rawBody123_57 : StackLang.HolProg 64 :=
.seq rawBody123_9 rawBody123_56

def rawBody123_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody123_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody123_60 : StackLang.HolProg 64 :=
.seq rawBody123_58 rawBody123_59

def rawBody123_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody123_57 rawBody123_60

def rawBody123_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody123_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody123_64 : StackLang.HolProg 64 :=
.seq rawBody123_62 rawBody123_63

def rawBody123_65 : StackLang.HolProg 64 :=
.seq rawBody123_61 rawBody123_64

def rawBody123_66 : StackLang.HolProg 64 :=
.seq rawBody123_8 rawBody123_65

def rawBody123_67 : StackLang.HolProg 64 :=
.seq rawBody123_7 rawBody123_66

def rawBody123_68 : StackLang.HolProg 64 :=
.loop rawBody123_67

def rawBody123_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody123_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody123_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody123_72 : StackLang.HolProg 64 :=
.seq rawBody123_70 rawBody123_71

def rawBody123_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody123_74 : StackLang.HolProg 64 :=
.seq rawBody123_72 rawBody123_73

def rawBody123_75 : StackLang.HolProg 64 :=
.seq rawBody123_69 rawBody123_74

def rawBody123_76 : StackLang.HolProg 64 :=
.seq rawBody123_68 rawBody123_75

def rawBody123_77 : StackLang.HolProg 64 :=
.seq rawBody123_6 rawBody123_76

def rawBody123_78 : StackLang.HolProg 64 :=
.seq rawBody123_5 rawBody123_77

def rawBody123_79 : StackLang.HolProg 64 :=
.seq rawBody123_4 rawBody123_78

def rawBody123_80 : StackLang.HolProg 64 :=
.seq rawBody123_3 rawBody123_79

def rawBody123_81 : StackLang.HolProg 64 :=
.seq rawBody123_2 rawBody123_80

def rawBody123_82 : StackLang.HolProg 64 :=
.seq rawBody123_1 rawBody123_81

def rawBody123_83 : StackLang.HolProg 64 :=
.seq rawBody123_0 rawBody123_82

def raw123 : StackLang.HolProg 64 := rawBody123_83
theorem raw123_eq : StackRawCall.compTop RawInfo.rawInfo (function123 (.list [])).1 = raw123 := by
  kernel_rfl
#print axioms raw123_eq
end InitECandidate.Proofs.BackendStages
