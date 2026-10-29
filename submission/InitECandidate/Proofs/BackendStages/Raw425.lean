import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function425
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody425_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody425_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody425_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody425_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody425_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody425_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def rawBody425_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def rawBody425_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody425_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody425_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody425_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody425_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1268#64)

def rawBody425_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody425_13 : StackLang.HolProg 64 :=
.seq rawBody425_11 rawBody425_12

def rawBody425_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody425_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody425_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody425_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 425 3

def rawBody425_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody425_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody425_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody425_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody425_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody425_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody425_24 : StackLang.HolProg 64 :=
.seq rawBody425_22 rawBody425_23

def rawBody425_25 : StackLang.HolProg 64 :=
.seq rawBody425_21 rawBody425_24

def rawBody425_26 : StackLang.HolProg 64 :=
.seq rawBody425_20 rawBody425_25

def rawBody425_27 : StackLang.HolProg 64 :=
.seq rawBody425_19 rawBody425_26

def rawBody425_28 : StackLang.HolProg 64 :=
.seq rawBody425_18 rawBody425_27

def rawBody425_29 : StackLang.HolProg 64 :=
.seq rawBody425_17 rawBody425_28

def rawBody425_30 : StackLang.HolProg 64 :=
.seq rawBody425_16 rawBody425_29

def rawBody425_31 : StackLang.HolProg 64 :=
.seq rawBody425_15 rawBody425_30

def rawBody425_32 : StackLang.HolProg 64 :=
.seq rawBody425_14 rawBody425_31

def rawBody425_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody425_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody425_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody425_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody425_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody425_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody425_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody425_40 : StackLang.HolProg 64 :=
.seq rawBody425_38 rawBody425_39

def rawBody425_41 : StackLang.HolProg 64 :=
.seq rawBody425_37 rawBody425_40

def rawBody425_42 : StackLang.HolProg 64 :=
.seq rawBody425_36 rawBody425_41

def rawBody425_43 : StackLang.HolProg 64 :=
.seq rawBody425_35 rawBody425_42

def rawBody425_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody425_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody425_46 : StackLang.HolProg 64 :=
.seq rawBody425_44 rawBody425_45

def rawBody425_47 : StackLang.HolProg 64 :=
.call (some (rawBody425_43, 0, 425, 2)) (Sum.inl 192) (some (rawBody425_46, 425, 3))

def rawBody425_48 : StackLang.HolProg 64 :=
.seq rawBody425_34 rawBody425_47

def rawBody425_49 : StackLang.HolProg 64 :=
.seq rawBody425_33 rawBody425_48

def rawBody425_50 : StackLang.HolProg 64 :=
.seq rawBody425_32 rawBody425_49

def rawBody425_51 : StackLang.HolProg 64 :=
.seq rawBody425_13 rawBody425_50

def rawBody425_52 : StackLang.HolProg 64 :=
.seq rawBody425_10 rawBody425_51

def rawBody425_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody425_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody425_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody425_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody425_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody425_58 : StackLang.HolProg 64 :=
.seq rawBody425_56 rawBody425_57

def rawBody425_59 : StackLang.HolProg 64 :=
.seq rawBody425_55 rawBody425_58

def rawBody425_60 : StackLang.HolProg 64 :=
.seq rawBody425_54 rawBody425_59

def rawBody425_61 : StackLang.HolProg 64 :=
.seq rawBody425_53 rawBody425_60

def rawBody425_62 : StackLang.HolProg 64 :=
.seq rawBody425_52 rawBody425_61

def rawBody425_63 : StackLang.HolProg 64 :=
.seq rawBody425_9 rawBody425_62

def rawBody425_64 : StackLang.HolProg 64 :=
.seq rawBody425_8 rawBody425_63

def rawBody425_65 : StackLang.HolProg 64 :=
.seq rawBody425_7 rawBody425_64

def rawBody425_66 : StackLang.HolProg 64 :=
.seq rawBody425_6 rawBody425_65

def rawBody425_67 : StackLang.HolProg 64 :=
.seq rawBody425_5 rawBody425_66

def rawBody425_68 : StackLang.HolProg 64 :=
.seq rawBody425_4 rawBody425_67

def rawBody425_69 : StackLang.HolProg 64 :=
.seq rawBody425_3 rawBody425_68

def rawBody425_70 : StackLang.HolProg 64 :=
.seq rawBody425_2 rawBody425_69

def rawBody425_71 : StackLang.HolProg 64 :=
.seq rawBody425_1 rawBody425_70

def rawBody425_72 : StackLang.HolProg 64 :=
.seq rawBody425_0 rawBody425_71

def raw425 : StackLang.HolProg 64 := rawBody425_72
theorem raw425_eq : StackRawCall.compTop RawInfo.rawInfo (function425 (.list [])).1 = raw425 := by
  kernel_rfl
#print axioms raw425_eq
end InitECandidate.Proofs.BackendStages
