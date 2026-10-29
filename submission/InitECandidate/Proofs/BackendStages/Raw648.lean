import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function648
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody648_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody648_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody648_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody648_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody648_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody648_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody648_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody648_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody648_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody648_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody648_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody648_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody648_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody648_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody648_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody648_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def rawBody648_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody648_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def rawBody648_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody648_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody648_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody648_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody648_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody648_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody648_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody648_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody648_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody648_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody648_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody648_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody648_45 : StackLang.HolProg 64 :=
.seq rawBody648_43 rawBody648_44

def rawBody648_46 : StackLang.HolProg 64 :=
.seq rawBody648_42 rawBody648_45

def rawBody648_47 : StackLang.HolProg 64 :=
.seq rawBody648_41 rawBody648_46

def rawBody648_48 : StackLang.HolProg 64 :=
.seq rawBody648_40 rawBody648_47

def rawBody648_49 : StackLang.HolProg 64 :=
.seq rawBody648_39 rawBody648_48

def rawBody648_50 : StackLang.HolProg 64 :=
.seq rawBody648_38 rawBody648_49

def rawBody648_51 : StackLang.HolProg 64 :=
.seq rawBody648_37 rawBody648_50

def rawBody648_52 : StackLang.HolProg 64 :=
.seq rawBody648_36 rawBody648_51

def rawBody648_53 : StackLang.HolProg 64 :=
.seq rawBody648_35 rawBody648_52

def rawBody648_54 : StackLang.HolProg 64 :=
.seq rawBody648_34 rawBody648_53

def rawBody648_55 : StackLang.HolProg 64 :=
.seq rawBody648_33 rawBody648_54

def rawBody648_56 : StackLang.HolProg 64 :=
.seq rawBody648_32 rawBody648_55

def rawBody648_57 : StackLang.HolProg 64 :=
.seq rawBody648_31 rawBody648_56

def rawBody648_58 : StackLang.HolProg 64 :=
.seq rawBody648_30 rawBody648_57

def rawBody648_59 : StackLang.HolProg 64 :=
.seq rawBody648_29 rawBody648_58

def rawBody648_60 : StackLang.HolProg 64 :=
.seq rawBody648_28 rawBody648_59

def rawBody648_61 : StackLang.HolProg 64 :=
.seq rawBody648_27 rawBody648_60

def rawBody648_62 : StackLang.HolProg 64 :=
.seq rawBody648_26 rawBody648_61

def rawBody648_63 : StackLang.HolProg 64 :=
.seq rawBody648_25 rawBody648_62

def rawBody648_64 : StackLang.HolProg 64 :=
.seq rawBody648_24 rawBody648_63

def rawBody648_65 : StackLang.HolProg 64 :=
.seq rawBody648_23 rawBody648_64

def rawBody648_66 : StackLang.HolProg 64 :=
.seq rawBody648_22 rawBody648_65

def rawBody648_67 : StackLang.HolProg 64 :=
.seq rawBody648_21 rawBody648_66

def rawBody648_68 : StackLang.HolProg 64 :=
.seq rawBody648_20 rawBody648_67

def rawBody648_69 : StackLang.HolProg 64 :=
.seq rawBody648_19 rawBody648_68

def rawBody648_70 : StackLang.HolProg 64 :=
.seq rawBody648_18 rawBody648_69

def rawBody648_71 : StackLang.HolProg 64 :=
.seq rawBody648_17 rawBody648_70

def rawBody648_72 : StackLang.HolProg 64 :=
.seq rawBody648_16 rawBody648_71

def rawBody648_73 : StackLang.HolProg 64 :=
.seq rawBody648_15 rawBody648_72

def rawBody648_74 : StackLang.HolProg 64 :=
.seq rawBody648_14 rawBody648_73

def rawBody648_75 : StackLang.HolProg 64 :=
.seq rawBody648_13 rawBody648_74

def rawBody648_76 : StackLang.HolProg 64 :=
.seq rawBody648_12 rawBody648_75

def rawBody648_77 : StackLang.HolProg 64 :=
.seq rawBody648_11 rawBody648_76

def rawBody648_78 : StackLang.HolProg 64 :=
.seq rawBody648_10 rawBody648_77

def rawBody648_79 : StackLang.HolProg 64 :=
.seq rawBody648_9 rawBody648_78

def rawBody648_80 : StackLang.HolProg 64 :=
.seq rawBody648_8 rawBody648_79

def rawBody648_81 : StackLang.HolProg 64 :=
.seq rawBody648_7 rawBody648_80

def rawBody648_82 : StackLang.HolProg 64 :=
.seq rawBody648_6 rawBody648_81

def rawBody648_83 : StackLang.HolProg 64 :=
.seq rawBody648_5 rawBody648_82

def rawBody648_84 : StackLang.HolProg 64 :=
.seq rawBody648_4 rawBody648_83

def rawBody648_85 : StackLang.HolProg 64 :=
.seq rawBody648_3 rawBody648_84

def rawBody648_86 : StackLang.HolProg 64 :=
.seq rawBody648_2 rawBody648_85

def rawBody648_87 : StackLang.HolProg 64 :=
.seq rawBody648_1 rawBody648_86

def rawBody648_88 : StackLang.HolProg 64 :=
.seq rawBody648_0 rawBody648_87

def raw648 : StackLang.HolProg 64 := rawBody648_88
theorem raw648_eq : StackRawCall.compTop RawInfo.rawInfo (function648 (.list [])).1 = raw648 := by
  kernel_rfl
#print axioms raw648_eq
end InitECandidate.Proofs.BackendStages
