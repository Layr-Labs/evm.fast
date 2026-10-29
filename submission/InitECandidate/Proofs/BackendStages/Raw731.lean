import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function731
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody731_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody731_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody731_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8505329371266088957#64)

def rawBody731_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody731_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody731_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 17002214543764226050#64)

def rawBody731_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody731_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody731_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 6865905132761471162#64)

def rawBody731_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody731_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody731_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8632934651105793861#64)

def rawBody731_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody731_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody731_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 6631298214892334189#64)

def rawBody731_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody731_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def rawBody731_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1582556514881692819#64)

def rawBody731_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody731_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def rawBody731_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody731_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody731_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody731_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody731_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody731_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody731_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody731_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody731_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody731_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody731_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody731_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody731_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody731_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody731_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody731_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody731_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def rawBody731_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody731_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody731_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def rawBody731_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody731_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody731_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody731_43 : StackLang.HolProg 64 :=
.seq rawBody731_41 rawBody731_42

def rawBody731_44 : StackLang.HolProg 64 :=
.seq rawBody731_40 rawBody731_43

def rawBody731_45 : StackLang.HolProg 64 :=
.seq rawBody731_39 rawBody731_44

def rawBody731_46 : StackLang.HolProg 64 :=
.seq rawBody731_38 rawBody731_45

def rawBody731_47 : StackLang.HolProg 64 :=
.seq rawBody731_37 rawBody731_46

def rawBody731_48 : StackLang.HolProg 64 :=
.seq rawBody731_36 rawBody731_47

def rawBody731_49 : StackLang.HolProg 64 :=
.seq rawBody731_35 rawBody731_48

def rawBody731_50 : StackLang.HolProg 64 :=
.seq rawBody731_34 rawBody731_49

def rawBody731_51 : StackLang.HolProg 64 :=
.seq rawBody731_33 rawBody731_50

def rawBody731_52 : StackLang.HolProg 64 :=
.seq rawBody731_32 rawBody731_51

def rawBody731_53 : StackLang.HolProg 64 :=
.seq rawBody731_31 rawBody731_52

def rawBody731_54 : StackLang.HolProg 64 :=
.seq rawBody731_30 rawBody731_53

def rawBody731_55 : StackLang.HolProg 64 :=
.seq rawBody731_29 rawBody731_54

def rawBody731_56 : StackLang.HolProg 64 :=
.seq rawBody731_28 rawBody731_55

def rawBody731_57 : StackLang.HolProg 64 :=
.seq rawBody731_27 rawBody731_56

def rawBody731_58 : StackLang.HolProg 64 :=
.seq rawBody731_26 rawBody731_57

def rawBody731_59 : StackLang.HolProg 64 :=
.seq rawBody731_25 rawBody731_58

def rawBody731_60 : StackLang.HolProg 64 :=
.seq rawBody731_24 rawBody731_59

def rawBody731_61 : StackLang.HolProg 64 :=
.seq rawBody731_23 rawBody731_60

def rawBody731_62 : StackLang.HolProg 64 :=
.seq rawBody731_22 rawBody731_61

def rawBody731_63 : StackLang.HolProg 64 :=
.seq rawBody731_21 rawBody731_62

def rawBody731_64 : StackLang.HolProg 64 :=
.seq rawBody731_20 rawBody731_63

def rawBody731_65 : StackLang.HolProg 64 :=
.seq rawBody731_19 rawBody731_64

def rawBody731_66 : StackLang.HolProg 64 :=
.seq rawBody731_18 rawBody731_65

def rawBody731_67 : StackLang.HolProg 64 :=
.seq rawBody731_17 rawBody731_66

def rawBody731_68 : StackLang.HolProg 64 :=
.seq rawBody731_16 rawBody731_67

def rawBody731_69 : StackLang.HolProg 64 :=
.seq rawBody731_15 rawBody731_68

def rawBody731_70 : StackLang.HolProg 64 :=
.seq rawBody731_14 rawBody731_69

def rawBody731_71 : StackLang.HolProg 64 :=
.seq rawBody731_13 rawBody731_70

def rawBody731_72 : StackLang.HolProg 64 :=
.seq rawBody731_12 rawBody731_71

def rawBody731_73 : StackLang.HolProg 64 :=
.seq rawBody731_11 rawBody731_72

def rawBody731_74 : StackLang.HolProg 64 :=
.seq rawBody731_10 rawBody731_73

def rawBody731_75 : StackLang.HolProg 64 :=
.seq rawBody731_9 rawBody731_74

def rawBody731_76 : StackLang.HolProg 64 :=
.seq rawBody731_8 rawBody731_75

def rawBody731_77 : StackLang.HolProg 64 :=
.seq rawBody731_7 rawBody731_76

def rawBody731_78 : StackLang.HolProg 64 :=
.seq rawBody731_6 rawBody731_77

def rawBody731_79 : StackLang.HolProg 64 :=
.seq rawBody731_5 rawBody731_78

def rawBody731_80 : StackLang.HolProg 64 :=
.seq rawBody731_4 rawBody731_79

def rawBody731_81 : StackLang.HolProg 64 :=
.seq rawBody731_3 rawBody731_80

def rawBody731_82 : StackLang.HolProg 64 :=
.seq rawBody731_2 rawBody731_81

def rawBody731_83 : StackLang.HolProg 64 :=
.seq rawBody731_1 rawBody731_82

def rawBody731_84 : StackLang.HolProg 64 :=
.seq rawBody731_0 rawBody731_83

def raw731 : StackLang.HolProg 64 := rawBody731_84
theorem raw731_eq : StackRawCall.compTop RawInfo.rawInfo (function731 (.list [])).1 = raw731 := by
  kernel_rfl
#print axioms raw731_eq
end InitECandidate.Proofs.BackendStages
