import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function561
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody561_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody561_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody561_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody561_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody561_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody561_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody561_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def rawBody561_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody561_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def rawBody561_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody561_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 96#64))

def rawBody561_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody561_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody561_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody561_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1924#64)

def rawBody561_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody561_16 : StackLang.HolProg 64 :=
.seq rawBody561_14 rawBody561_15

def rawBody561_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody561_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody561_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody561_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 561 3

def rawBody561_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody561_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody561_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody561_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody561_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody561_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody561_27 : StackLang.HolProg 64 :=
.seq rawBody561_25 rawBody561_26

def rawBody561_28 : StackLang.HolProg 64 :=
.seq rawBody561_24 rawBody561_27

def rawBody561_29 : StackLang.HolProg 64 :=
.seq rawBody561_23 rawBody561_28

def rawBody561_30 : StackLang.HolProg 64 :=
.seq rawBody561_22 rawBody561_29

def rawBody561_31 : StackLang.HolProg 64 :=
.seq rawBody561_21 rawBody561_30

def rawBody561_32 : StackLang.HolProg 64 :=
.seq rawBody561_20 rawBody561_31

def rawBody561_33 : StackLang.HolProg 64 :=
.seq rawBody561_19 rawBody561_32

def rawBody561_34 : StackLang.HolProg 64 :=
.seq rawBody561_18 rawBody561_33

def rawBody561_35 : StackLang.HolProg 64 :=
.seq rawBody561_17 rawBody561_34

def rawBody561_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody561_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody561_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody561_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody561_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody561_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody561_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody561_43 : StackLang.HolProg 64 :=
.seq rawBody561_41 rawBody561_42

def rawBody561_44 : StackLang.HolProg 64 :=
.seq rawBody561_40 rawBody561_43

def rawBody561_45 : StackLang.HolProg 64 :=
.seq rawBody561_39 rawBody561_44

def rawBody561_46 : StackLang.HolProg 64 :=
.seq rawBody561_38 rawBody561_45

def rawBody561_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody561_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody561_49 : StackLang.HolProg 64 :=
.seq rawBody561_47 rawBody561_48

def rawBody561_50 : StackLang.HolProg 64 :=
.call (some (rawBody561_46, 0, 561, 2)) (Sum.inl 560) (some (rawBody561_49, 561, 3))

def rawBody561_51 : StackLang.HolProg 64 :=
.seq rawBody561_37 rawBody561_50

def rawBody561_52 : StackLang.HolProg 64 :=
.seq rawBody561_36 rawBody561_51

def rawBody561_53 : StackLang.HolProg 64 :=
.seq rawBody561_35 rawBody561_52

def rawBody561_54 : StackLang.HolProg 64 :=
.seq rawBody561_16 rawBody561_53

def rawBody561_55 : StackLang.HolProg 64 :=
.seq rawBody561_13 rawBody561_54

def rawBody561_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody561_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody561_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody561_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody561_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody561_61 : StackLang.HolProg 64 :=
.seq rawBody561_59 rawBody561_60

def rawBody561_62 : StackLang.HolProg 64 :=
.seq rawBody561_58 rawBody561_61

def rawBody561_63 : StackLang.HolProg 64 :=
.seq rawBody561_57 rawBody561_62

def rawBody561_64 : StackLang.HolProg 64 :=
.seq rawBody561_56 rawBody561_63

def rawBody561_65 : StackLang.HolProg 64 :=
.seq rawBody561_55 rawBody561_64

def rawBody561_66 : StackLang.HolProg 64 :=
.seq rawBody561_12 rawBody561_65

def rawBody561_67 : StackLang.HolProg 64 :=
.seq rawBody561_11 rawBody561_66

def rawBody561_68 : StackLang.HolProg 64 :=
.seq rawBody561_10 rawBody561_67

def rawBody561_69 : StackLang.HolProg 64 :=
.seq rawBody561_9 rawBody561_68

def rawBody561_70 : StackLang.HolProg 64 :=
.seq rawBody561_8 rawBody561_69

def rawBody561_71 : StackLang.HolProg 64 :=
.seq rawBody561_7 rawBody561_70

def rawBody561_72 : StackLang.HolProg 64 :=
.seq rawBody561_6 rawBody561_71

def rawBody561_73 : StackLang.HolProg 64 :=
.seq rawBody561_5 rawBody561_72

def rawBody561_74 : StackLang.HolProg 64 :=
.seq rawBody561_4 rawBody561_73

def rawBody561_75 : StackLang.HolProg 64 :=
.seq rawBody561_3 rawBody561_74

def rawBody561_76 : StackLang.HolProg 64 :=
.seq rawBody561_2 rawBody561_75

def rawBody561_77 : StackLang.HolProg 64 :=
.seq rawBody561_1 rawBody561_76

def rawBody561_78 : StackLang.HolProg 64 :=
.seq rawBody561_0 rawBody561_77

def raw561 : StackLang.HolProg 64 := rawBody561_78
theorem raw561_eq : StackRawCall.compTop RawInfo.rawInfo (function561 (.list [])).1 = raw561 := by
  kernel_rfl
#print axioms raw561_eq
end InitECandidate.Proofs.BackendStages
