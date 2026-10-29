import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function150
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody150_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody150_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1779033703#64)

def rawBody150_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody150_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody150_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3144134277#64)

def rawBody150_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody150_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody150_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1013904242#64)

def rawBody150_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody150_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody150_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2773480762#64)

def rawBody150_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody150_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody150_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1359893119#64)

def rawBody150_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody150_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def rawBody150_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2600822924#64)

def rawBody150_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody150_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody150_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 528734635#64)

def rawBody150_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody150_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def rawBody150_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1541459225#64)

def rawBody150_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody150_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody150_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody150_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody150_43 : StackLang.HolProg 64 :=
.seq rawBody150_41 rawBody150_42

def rawBody150_44 : StackLang.HolProg 64 :=
.seq rawBody150_40 rawBody150_43

def rawBody150_45 : StackLang.HolProg 64 :=
.seq rawBody150_39 rawBody150_44

def rawBody150_46 : StackLang.HolProg 64 :=
.seq rawBody150_38 rawBody150_45

def rawBody150_47 : StackLang.HolProg 64 :=
.seq rawBody150_37 rawBody150_46

def rawBody150_48 : StackLang.HolProg 64 :=
.seq rawBody150_36 rawBody150_47

def rawBody150_49 : StackLang.HolProg 64 :=
.seq rawBody150_35 rawBody150_48

def rawBody150_50 : StackLang.HolProg 64 :=
.seq rawBody150_34 rawBody150_49

def rawBody150_51 : StackLang.HolProg 64 :=
.seq rawBody150_33 rawBody150_50

def rawBody150_52 : StackLang.HolProg 64 :=
.seq rawBody150_32 rawBody150_51

def rawBody150_53 : StackLang.HolProg 64 :=
.seq rawBody150_31 rawBody150_52

def rawBody150_54 : StackLang.HolProg 64 :=
.seq rawBody150_30 rawBody150_53

def rawBody150_55 : StackLang.HolProg 64 :=
.seq rawBody150_29 rawBody150_54

def rawBody150_56 : StackLang.HolProg 64 :=
.seq rawBody150_28 rawBody150_55

def rawBody150_57 : StackLang.HolProg 64 :=
.seq rawBody150_27 rawBody150_56

def rawBody150_58 : StackLang.HolProg 64 :=
.seq rawBody150_26 rawBody150_57

def rawBody150_59 : StackLang.HolProg 64 :=
.seq rawBody150_25 rawBody150_58

def rawBody150_60 : StackLang.HolProg 64 :=
.seq rawBody150_24 rawBody150_59

def rawBody150_61 : StackLang.HolProg 64 :=
.seq rawBody150_23 rawBody150_60

def rawBody150_62 : StackLang.HolProg 64 :=
.seq rawBody150_22 rawBody150_61

def rawBody150_63 : StackLang.HolProg 64 :=
.seq rawBody150_21 rawBody150_62

def rawBody150_64 : StackLang.HolProg 64 :=
.seq rawBody150_20 rawBody150_63

def rawBody150_65 : StackLang.HolProg 64 :=
.seq rawBody150_19 rawBody150_64

def rawBody150_66 : StackLang.HolProg 64 :=
.seq rawBody150_18 rawBody150_65

def rawBody150_67 : StackLang.HolProg 64 :=
.seq rawBody150_17 rawBody150_66

def rawBody150_68 : StackLang.HolProg 64 :=
.seq rawBody150_16 rawBody150_67

def rawBody150_69 : StackLang.HolProg 64 :=
.seq rawBody150_15 rawBody150_68

def rawBody150_70 : StackLang.HolProg 64 :=
.seq rawBody150_14 rawBody150_69

def rawBody150_71 : StackLang.HolProg 64 :=
.seq rawBody150_13 rawBody150_70

def rawBody150_72 : StackLang.HolProg 64 :=
.seq rawBody150_12 rawBody150_71

def rawBody150_73 : StackLang.HolProg 64 :=
.seq rawBody150_11 rawBody150_72

def rawBody150_74 : StackLang.HolProg 64 :=
.seq rawBody150_10 rawBody150_73

def rawBody150_75 : StackLang.HolProg 64 :=
.seq rawBody150_9 rawBody150_74

def rawBody150_76 : StackLang.HolProg 64 :=
.seq rawBody150_8 rawBody150_75

def rawBody150_77 : StackLang.HolProg 64 :=
.seq rawBody150_7 rawBody150_76

def rawBody150_78 : StackLang.HolProg 64 :=
.seq rawBody150_6 rawBody150_77

def rawBody150_79 : StackLang.HolProg 64 :=
.seq rawBody150_5 rawBody150_78

def rawBody150_80 : StackLang.HolProg 64 :=
.seq rawBody150_4 rawBody150_79

def rawBody150_81 : StackLang.HolProg 64 :=
.seq rawBody150_3 rawBody150_80

def rawBody150_82 : StackLang.HolProg 64 :=
.seq rawBody150_2 rawBody150_81

def rawBody150_83 : StackLang.HolProg 64 :=
.seq rawBody150_1 rawBody150_82

def rawBody150_84 : StackLang.HolProg 64 :=
.seq rawBody150_0 rawBody150_83

def raw150 : StackLang.HolProg 64 := rawBody150_84
theorem raw150_eq : StackRawCall.compTop RawInfo.rawInfo (function150 (.list [])).1 = raw150 := by
  kernel_rfl
#print axioms raw150_eq
end InitECandidate.Proofs.BackendStages
