import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function545
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody545_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody545_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody545_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def rawBody545_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8#64)

def rawBody545_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody545_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody545_6 : StackLang.HolProg 64 :=
.seq rawBody545_4 rawBody545_5

def rawBody545_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody545_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1805#64)

def rawBody545_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody545_10 : StackLang.HolProg 64 :=
.seq rawBody545_8 rawBody545_9

def rawBody545_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody545_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody545_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody545_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 545 3

def rawBody545_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody545_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody545_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody545_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody545_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody545_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody545_21 : StackLang.HolProg 64 :=
.seq rawBody545_19 rawBody545_20

def rawBody545_22 : StackLang.HolProg 64 :=
.seq rawBody545_18 rawBody545_21

def rawBody545_23 : StackLang.HolProg 64 :=
.seq rawBody545_17 rawBody545_22

def rawBody545_24 : StackLang.HolProg 64 :=
.seq rawBody545_16 rawBody545_23

def rawBody545_25 : StackLang.HolProg 64 :=
.seq rawBody545_15 rawBody545_24

def rawBody545_26 : StackLang.HolProg 64 :=
.seq rawBody545_14 rawBody545_25

def rawBody545_27 : StackLang.HolProg 64 :=
.seq rawBody545_13 rawBody545_26

def rawBody545_28 : StackLang.HolProg 64 :=
.seq rawBody545_12 rawBody545_27

def rawBody545_29 : StackLang.HolProg 64 :=
.seq rawBody545_11 rawBody545_28

def rawBody545_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody545_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody545_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody545_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody545_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody545_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody545_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody545_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody545_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody545_39 : StackLang.HolProg 64 :=
.seq rawBody545_37 rawBody545_38

def rawBody545_40 : StackLang.HolProg 64 :=
.seq rawBody545_36 rawBody545_39

def rawBody545_41 : StackLang.HolProg 64 :=
.seq rawBody545_35 rawBody545_40

def rawBody545_42 : StackLang.HolProg 64 :=
.seq rawBody545_34 rawBody545_41

def rawBody545_43 : StackLang.HolProg 64 :=
.seq rawBody545_33 rawBody545_42

def rawBody545_44 : StackLang.HolProg 64 :=
.seq rawBody545_32 rawBody545_43

def rawBody545_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody545_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody545_47 : StackLang.HolProg 64 :=
.seq rawBody545_45 rawBody545_46

def rawBody545_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody545_49 : StackLang.HolProg 64 :=
.seq rawBody545_47 rawBody545_48

def rawBody545_50 : StackLang.HolProg 64 :=
.call (some (rawBody545_44, 0, 545, 2)) (Sum.inl 437) (some (rawBody545_49, 545, 3))

def rawBody545_51 : StackLang.HolProg 64 :=
.seq rawBody545_31 rawBody545_50

def rawBody545_52 : StackLang.HolProg 64 :=
.seq rawBody545_30 rawBody545_51

def rawBody545_53 : StackLang.HolProg 64 :=
.seq rawBody545_29 rawBody545_52

def rawBody545_54 : StackLang.HolProg 64 :=
.seq rawBody545_10 rawBody545_53

def rawBody545_55 : StackLang.HolProg 64 :=
.seq rawBody545_7 rawBody545_54

def rawBody545_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody545_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody545_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody545_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody545_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody545_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody545_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody545_63 : StackLang.HolProg 64 :=
.seq rawBody545_61 rawBody545_62

def rawBody545_64 : StackLang.HolProg 64 :=
.seq rawBody545_60 rawBody545_63

def rawBody545_65 : StackLang.HolProg 64 :=
.seq rawBody545_59 rawBody545_64

def rawBody545_66 : StackLang.HolProg 64 :=
.seq rawBody545_58 rawBody545_65

def rawBody545_67 : StackLang.HolProg 64 :=
.seq rawBody545_57 rawBody545_66

def rawBody545_68 : StackLang.HolProg 64 :=
.seq rawBody545_56 rawBody545_67

def rawBody545_69 : StackLang.HolProg 64 :=
.seq rawBody545_55 rawBody545_68

def rawBody545_70 : StackLang.HolProg 64 :=
.seq rawBody545_6 rawBody545_69

def rawBody545_71 : StackLang.HolProg 64 :=
.seq rawBody545_3 rawBody545_70

def rawBody545_72 : StackLang.HolProg 64 :=
.seq rawBody545_2 rawBody545_71

def rawBody545_73 : StackLang.HolProg 64 :=
.seq rawBody545_1 rawBody545_72

def rawBody545_74 : StackLang.HolProg 64 :=
.seq rawBody545_0 rawBody545_73

def raw545 : StackLang.HolProg 64 := rawBody545_74
theorem raw545_eq : StackRawCall.compTop RawInfo.rawInfo (function545 (.list [])).1 = raw545 := by
  kernel_rfl
#print axioms raw545_eq
end InitECandidate.Proofs.BackendStages
