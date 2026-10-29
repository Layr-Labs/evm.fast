import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function563
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody563_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody563_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody563_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody563_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody563_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody563_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody563_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def rawBody563_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody563_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def rawBody563_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody563_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody563_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody563_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1928#64)

def rawBody563_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody563_14 : StackLang.HolProg 64 :=
.seq rawBody563_12 rawBody563_13

def rawBody563_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody563_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody563_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody563_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 563 3

def rawBody563_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody563_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody563_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody563_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody563_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody563_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody563_25 : StackLang.HolProg 64 :=
.seq rawBody563_23 rawBody563_24

def rawBody563_26 : StackLang.HolProg 64 :=
.seq rawBody563_22 rawBody563_25

def rawBody563_27 : StackLang.HolProg 64 :=
.seq rawBody563_21 rawBody563_26

def rawBody563_28 : StackLang.HolProg 64 :=
.seq rawBody563_20 rawBody563_27

def rawBody563_29 : StackLang.HolProg 64 :=
.seq rawBody563_19 rawBody563_28

def rawBody563_30 : StackLang.HolProg 64 :=
.seq rawBody563_18 rawBody563_29

def rawBody563_31 : StackLang.HolProg 64 :=
.seq rawBody563_17 rawBody563_30

def rawBody563_32 : StackLang.HolProg 64 :=
.seq rawBody563_16 rawBody563_31

def rawBody563_33 : StackLang.HolProg 64 :=
.seq rawBody563_15 rawBody563_32

def rawBody563_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody563_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody563_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody563_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody563_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody563_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody563_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody563_41 : StackLang.HolProg 64 :=
.seq rawBody563_39 rawBody563_40

def rawBody563_42 : StackLang.HolProg 64 :=
.seq rawBody563_38 rawBody563_41

def rawBody563_43 : StackLang.HolProg 64 :=
.seq rawBody563_37 rawBody563_42

def rawBody563_44 : StackLang.HolProg 64 :=
.seq rawBody563_36 rawBody563_43

def rawBody563_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody563_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody563_47 : StackLang.HolProg 64 :=
.seq rawBody563_45 rawBody563_46

def rawBody563_48 : StackLang.HolProg 64 :=
.call (some (rawBody563_44, 0, 563, 2)) (Sum.inl 560) (some (rawBody563_47, 563, 3))

def rawBody563_49 : StackLang.HolProg 64 :=
.seq rawBody563_35 rawBody563_48

def rawBody563_50 : StackLang.HolProg 64 :=
.seq rawBody563_34 rawBody563_49

def rawBody563_51 : StackLang.HolProg 64 :=
.seq rawBody563_33 rawBody563_50

def rawBody563_52 : StackLang.HolProg 64 :=
.seq rawBody563_14 rawBody563_51

def rawBody563_53 : StackLang.HolProg 64 :=
.seq rawBody563_11 rawBody563_52

def rawBody563_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody563_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody563_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody563_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody563_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody563_59 : StackLang.HolProg 64 :=
.seq rawBody563_57 rawBody563_58

def rawBody563_60 : StackLang.HolProg 64 :=
.seq rawBody563_56 rawBody563_59

def rawBody563_61 : StackLang.HolProg 64 :=
.seq rawBody563_55 rawBody563_60

def rawBody563_62 : StackLang.HolProg 64 :=
.seq rawBody563_54 rawBody563_61

def rawBody563_63 : StackLang.HolProg 64 :=
.seq rawBody563_53 rawBody563_62

def rawBody563_64 : StackLang.HolProg 64 :=
.seq rawBody563_10 rawBody563_63

def rawBody563_65 : StackLang.HolProg 64 :=
.seq rawBody563_9 rawBody563_64

def rawBody563_66 : StackLang.HolProg 64 :=
.seq rawBody563_8 rawBody563_65

def rawBody563_67 : StackLang.HolProg 64 :=
.seq rawBody563_7 rawBody563_66

def rawBody563_68 : StackLang.HolProg 64 :=
.seq rawBody563_6 rawBody563_67

def rawBody563_69 : StackLang.HolProg 64 :=
.seq rawBody563_5 rawBody563_68

def rawBody563_70 : StackLang.HolProg 64 :=
.seq rawBody563_4 rawBody563_69

def rawBody563_71 : StackLang.HolProg 64 :=
.seq rawBody563_3 rawBody563_70

def rawBody563_72 : StackLang.HolProg 64 :=
.seq rawBody563_2 rawBody563_71

def rawBody563_73 : StackLang.HolProg 64 :=
.seq rawBody563_1 rawBody563_72

def rawBody563_74 : StackLang.HolProg 64 :=
.seq rawBody563_0 rawBody563_73

def raw563 : StackLang.HolProg 64 := rawBody563_74
theorem raw563_eq : StackRawCall.compTop RawInfo.rawInfo (function563 (.list [])).1 = raw563 := by
  kernel_rfl
#print axioms raw563_eq
end InitECandidate.Proofs.BackendStages
