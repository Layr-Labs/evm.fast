import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function280
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody280_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody280_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody280_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 11684671#64)

def rawBody280_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody280_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody280_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody280_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 744#64)

def rawBody280_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody280_8 : StackLang.HolProg 64 :=
.seq rawBody280_6 rawBody280_7

def rawBody280_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody280_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody280_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody280_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 280 3

def rawBody280_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody280_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody280_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody280_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody280_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody280_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody280_19 : StackLang.HolProg 64 :=
.seq rawBody280_17 rawBody280_18

def rawBody280_20 : StackLang.HolProg 64 :=
.seq rawBody280_16 rawBody280_19

def rawBody280_21 : StackLang.HolProg 64 :=
.seq rawBody280_15 rawBody280_20

def rawBody280_22 : StackLang.HolProg 64 :=
.seq rawBody280_14 rawBody280_21

def rawBody280_23 : StackLang.HolProg 64 :=
.seq rawBody280_13 rawBody280_22

def rawBody280_24 : StackLang.HolProg 64 :=
.seq rawBody280_12 rawBody280_23

def rawBody280_25 : StackLang.HolProg 64 :=
.seq rawBody280_11 rawBody280_24

def rawBody280_26 : StackLang.HolProg 64 :=
.seq rawBody280_10 rawBody280_25

def rawBody280_27 : StackLang.HolProg 64 :=
.seq rawBody280_9 rawBody280_26

def rawBody280_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody280_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody280_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody280_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody280_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody280_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody280_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody280_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody280_36 : StackLang.HolProg 64 :=
.seq rawBody280_34 rawBody280_35

def rawBody280_37 : StackLang.HolProg 64 :=
.seq rawBody280_33 rawBody280_36

def rawBody280_38 : StackLang.HolProg 64 :=
.seq rawBody280_32 rawBody280_37

def rawBody280_39 : StackLang.HolProg 64 :=
.seq rawBody280_31 rawBody280_38

def rawBody280_40 : StackLang.HolProg 64 :=
.seq rawBody280_30 rawBody280_39

def rawBody280_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody280_42 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody280_43 : StackLang.HolProg 64 :=
.seq rawBody280_41 rawBody280_42

def rawBody280_44 : StackLang.HolProg 64 :=
.call (some (rawBody280_40, 0, 280, 2)) (Sum.inl 279) (some (rawBody280_43, 280, 3))

def rawBody280_45 : StackLang.HolProg 64 :=
.seq rawBody280_29 rawBody280_44

def rawBody280_46 : StackLang.HolProg 64 :=
.seq rawBody280_28 rawBody280_45

def rawBody280_47 : StackLang.HolProg 64 :=
.seq rawBody280_27 rawBody280_46

def rawBody280_48 : StackLang.HolProg 64 :=
.seq rawBody280_8 rawBody280_47

def rawBody280_49 : StackLang.HolProg 64 :=
.seq rawBody280_5 rawBody280_48

def rawBody280_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody280_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody280_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody280_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody280_54 : StackLang.HolProg 64 :=
.seq rawBody280_52 rawBody280_53

def rawBody280_55 : StackLang.HolProg 64 :=
.seq rawBody280_51 rawBody280_54

def rawBody280_56 : StackLang.HolProg 64 :=
.seq rawBody280_50 rawBody280_55

def rawBody280_57 : StackLang.HolProg 64 :=
.seq rawBody280_49 rawBody280_56

def rawBody280_58 : StackLang.HolProg 64 :=
.seq rawBody280_4 rawBody280_57

def rawBody280_59 : StackLang.HolProg 64 :=
.seq rawBody280_3 rawBody280_58

def rawBody280_60 : StackLang.HolProg 64 :=
.seq rawBody280_2 rawBody280_59

def rawBody280_61 : StackLang.HolProg 64 :=
.seq rawBody280_1 rawBody280_60

def rawBody280_62 : StackLang.HolProg 64 :=
.seq rawBody280_0 rawBody280_61

def raw280 : StackLang.HolProg 64 := rawBody280_62
theorem raw280_eq : StackRawCall.compTop RawInfo.rawInfo (function280 (.list [])).1 = raw280 := by
  kernel_rfl
#print axioms raw280_eq
end InitECandidate.Proofs.BackendStages
