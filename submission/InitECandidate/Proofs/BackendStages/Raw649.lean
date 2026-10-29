import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function649
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody649_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody649_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody649_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody649_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody649_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody649_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody649_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody649_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody649_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody649_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody649_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody649_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody649_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody649_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody649_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody649_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody649_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def rawBody649_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody649_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def rawBody649_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody649_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody649_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody649_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody649_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody649_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody649_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody649_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody649_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody649_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody649_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody649_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody649_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody649_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody649_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody649_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody649_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody649_36 : StackLang.HolProg 64 :=
.seq rawBody649_34 rawBody649_35

def rawBody649_37 : StackLang.HolProg 64 :=
.seq rawBody649_33 rawBody649_36

def rawBody649_38 : StackLang.HolProg 64 :=
.seq rawBody649_32 rawBody649_37

def rawBody649_39 : StackLang.HolProg 64 :=
.seq rawBody649_31 rawBody649_38

def rawBody649_40 : StackLang.HolProg 64 :=
.seq rawBody649_30 rawBody649_39

def rawBody649_41 : StackLang.HolProg 64 :=
.seq rawBody649_29 rawBody649_40

def rawBody649_42 : StackLang.HolProg 64 :=
.seq rawBody649_28 rawBody649_41

def rawBody649_43 : StackLang.HolProg 64 :=
.seq rawBody649_27 rawBody649_42

def rawBody649_44 : StackLang.HolProg 64 :=
.seq rawBody649_26 rawBody649_43

def rawBody649_45 : StackLang.HolProg 64 :=
.seq rawBody649_25 rawBody649_44

def rawBody649_46 : StackLang.HolProg 64 :=
.seq rawBody649_24 rawBody649_45

def rawBody649_47 : StackLang.HolProg 64 :=
.seq rawBody649_23 rawBody649_46

def rawBody649_48 : StackLang.HolProg 64 :=
.seq rawBody649_22 rawBody649_47

def rawBody649_49 : StackLang.HolProg 64 :=
.seq rawBody649_21 rawBody649_48

def rawBody649_50 : StackLang.HolProg 64 :=
.seq rawBody649_20 rawBody649_49

def rawBody649_51 : StackLang.HolProg 64 :=
.seq rawBody649_19 rawBody649_50

def rawBody649_52 : StackLang.HolProg 64 :=
.seq rawBody649_18 rawBody649_51

def rawBody649_53 : StackLang.HolProg 64 :=
.seq rawBody649_17 rawBody649_52

def rawBody649_54 : StackLang.HolProg 64 :=
.seq rawBody649_16 rawBody649_53

def rawBody649_55 : StackLang.HolProg 64 :=
.seq rawBody649_15 rawBody649_54

def rawBody649_56 : StackLang.HolProg 64 :=
.seq rawBody649_14 rawBody649_55

def rawBody649_57 : StackLang.HolProg 64 :=
.seq rawBody649_13 rawBody649_56

def rawBody649_58 : StackLang.HolProg 64 :=
.seq rawBody649_12 rawBody649_57

def rawBody649_59 : StackLang.HolProg 64 :=
.seq rawBody649_11 rawBody649_58

def rawBody649_60 : StackLang.HolProg 64 :=
.seq rawBody649_10 rawBody649_59

def rawBody649_61 : StackLang.HolProg 64 :=
.seq rawBody649_9 rawBody649_60

def rawBody649_62 : StackLang.HolProg 64 :=
.seq rawBody649_8 rawBody649_61

def rawBody649_63 : StackLang.HolProg 64 :=
.seq rawBody649_7 rawBody649_62

def rawBody649_64 : StackLang.HolProg 64 :=
.seq rawBody649_6 rawBody649_63

def rawBody649_65 : StackLang.HolProg 64 :=
.seq rawBody649_5 rawBody649_64

def rawBody649_66 : StackLang.HolProg 64 :=
.seq rawBody649_4 rawBody649_65

def rawBody649_67 : StackLang.HolProg 64 :=
.seq rawBody649_3 rawBody649_66

def rawBody649_68 : StackLang.HolProg 64 :=
.seq rawBody649_2 rawBody649_67

def rawBody649_69 : StackLang.HolProg 64 :=
.seq rawBody649_1 rawBody649_68

def rawBody649_70 : StackLang.HolProg 64 :=
.seq rawBody649_0 rawBody649_69

def raw649 : StackLang.HolProg 64 := rawBody649_70
theorem raw649_eq : StackRawCall.compTop RawInfo.rawInfo (function649 (.list [])).1 = raw649 := by
  kernel_rfl
#print axioms raw649_eq
end InitECandidate.Proofs.BackendStages
