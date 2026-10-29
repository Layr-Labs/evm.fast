import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function220
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody220_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody220_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody220_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody220_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody220_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody220_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody220_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody220_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody220_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody220_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody220_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody220_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody220_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody220_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody220_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody220_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def rawBody220_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody220_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def rawBody220_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody220_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody220_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody220_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody220_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody220_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody220_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody220_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody220_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody220_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody220_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody220_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody220_45 : StackLang.HolProg 64 :=
.seq rawBody220_43 rawBody220_44

def rawBody220_46 : StackLang.HolProg 64 :=
.seq rawBody220_42 rawBody220_45

def rawBody220_47 : StackLang.HolProg 64 :=
.seq rawBody220_41 rawBody220_46

def rawBody220_48 : StackLang.HolProg 64 :=
.seq rawBody220_40 rawBody220_47

def rawBody220_49 : StackLang.HolProg 64 :=
.seq rawBody220_39 rawBody220_48

def rawBody220_50 : StackLang.HolProg 64 :=
.seq rawBody220_38 rawBody220_49

def rawBody220_51 : StackLang.HolProg 64 :=
.seq rawBody220_37 rawBody220_50

def rawBody220_52 : StackLang.HolProg 64 :=
.seq rawBody220_36 rawBody220_51

def rawBody220_53 : StackLang.HolProg 64 :=
.seq rawBody220_35 rawBody220_52

def rawBody220_54 : StackLang.HolProg 64 :=
.seq rawBody220_34 rawBody220_53

def rawBody220_55 : StackLang.HolProg 64 :=
.seq rawBody220_33 rawBody220_54

def rawBody220_56 : StackLang.HolProg 64 :=
.seq rawBody220_32 rawBody220_55

def rawBody220_57 : StackLang.HolProg 64 :=
.seq rawBody220_31 rawBody220_56

def rawBody220_58 : StackLang.HolProg 64 :=
.seq rawBody220_30 rawBody220_57

def rawBody220_59 : StackLang.HolProg 64 :=
.seq rawBody220_29 rawBody220_58

def rawBody220_60 : StackLang.HolProg 64 :=
.seq rawBody220_28 rawBody220_59

def rawBody220_61 : StackLang.HolProg 64 :=
.seq rawBody220_27 rawBody220_60

def rawBody220_62 : StackLang.HolProg 64 :=
.seq rawBody220_26 rawBody220_61

def rawBody220_63 : StackLang.HolProg 64 :=
.seq rawBody220_25 rawBody220_62

def rawBody220_64 : StackLang.HolProg 64 :=
.seq rawBody220_24 rawBody220_63

def rawBody220_65 : StackLang.HolProg 64 :=
.seq rawBody220_23 rawBody220_64

def rawBody220_66 : StackLang.HolProg 64 :=
.seq rawBody220_22 rawBody220_65

def rawBody220_67 : StackLang.HolProg 64 :=
.seq rawBody220_21 rawBody220_66

def rawBody220_68 : StackLang.HolProg 64 :=
.seq rawBody220_20 rawBody220_67

def rawBody220_69 : StackLang.HolProg 64 :=
.seq rawBody220_19 rawBody220_68

def rawBody220_70 : StackLang.HolProg 64 :=
.seq rawBody220_18 rawBody220_69

def rawBody220_71 : StackLang.HolProg 64 :=
.seq rawBody220_17 rawBody220_70

def rawBody220_72 : StackLang.HolProg 64 :=
.seq rawBody220_16 rawBody220_71

def rawBody220_73 : StackLang.HolProg 64 :=
.seq rawBody220_15 rawBody220_72

def rawBody220_74 : StackLang.HolProg 64 :=
.seq rawBody220_14 rawBody220_73

def rawBody220_75 : StackLang.HolProg 64 :=
.seq rawBody220_13 rawBody220_74

def rawBody220_76 : StackLang.HolProg 64 :=
.seq rawBody220_12 rawBody220_75

def rawBody220_77 : StackLang.HolProg 64 :=
.seq rawBody220_11 rawBody220_76

def rawBody220_78 : StackLang.HolProg 64 :=
.seq rawBody220_10 rawBody220_77

def rawBody220_79 : StackLang.HolProg 64 :=
.seq rawBody220_9 rawBody220_78

def rawBody220_80 : StackLang.HolProg 64 :=
.seq rawBody220_8 rawBody220_79

def rawBody220_81 : StackLang.HolProg 64 :=
.seq rawBody220_7 rawBody220_80

def rawBody220_82 : StackLang.HolProg 64 :=
.seq rawBody220_6 rawBody220_81

def rawBody220_83 : StackLang.HolProg 64 :=
.seq rawBody220_5 rawBody220_82

def rawBody220_84 : StackLang.HolProg 64 :=
.seq rawBody220_4 rawBody220_83

def rawBody220_85 : StackLang.HolProg 64 :=
.seq rawBody220_3 rawBody220_84

def rawBody220_86 : StackLang.HolProg 64 :=
.seq rawBody220_2 rawBody220_85

def rawBody220_87 : StackLang.HolProg 64 :=
.seq rawBody220_1 rawBody220_86

def rawBody220_88 : StackLang.HolProg 64 :=
.seq rawBody220_0 rawBody220_87

def raw220 : StackLang.HolProg 64 := rawBody220_88
theorem raw220_eq : StackRawCall.compTop RawInfo.rawInfo (function220 (.list [])).1 = raw220 := by
  kernel_rfl
#print axioms raw220_eq
end InitECandidate.Proofs.BackendStages
