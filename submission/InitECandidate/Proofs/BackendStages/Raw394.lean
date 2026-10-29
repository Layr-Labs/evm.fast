import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function394
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody394_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody394_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody394_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody394_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody394_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody394_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551480#64))

def rawBody394_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody394_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody394_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody394_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody394_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody394_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody394_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody394_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1172#64)

def rawBody394_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody394_15 : StackLang.HolProg 64 :=
.seq rawBody394_13 rawBody394_14

def rawBody394_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody394_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody394_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody394_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 394 3

def rawBody394_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody394_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody394_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody394_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody394_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody394_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody394_26 : StackLang.HolProg 64 :=
.seq rawBody394_24 rawBody394_25

def rawBody394_27 : StackLang.HolProg 64 :=
.seq rawBody394_23 rawBody394_26

def rawBody394_28 : StackLang.HolProg 64 :=
.seq rawBody394_22 rawBody394_27

def rawBody394_29 : StackLang.HolProg 64 :=
.seq rawBody394_21 rawBody394_28

def rawBody394_30 : StackLang.HolProg 64 :=
.seq rawBody394_20 rawBody394_29

def rawBody394_31 : StackLang.HolProg 64 :=
.seq rawBody394_19 rawBody394_30

def rawBody394_32 : StackLang.HolProg 64 :=
.seq rawBody394_18 rawBody394_31

def rawBody394_33 : StackLang.HolProg 64 :=
.seq rawBody394_17 rawBody394_32

def rawBody394_34 : StackLang.HolProg 64 :=
.seq rawBody394_16 rawBody394_33

def rawBody394_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody394_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody394_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody394_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody394_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody394_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody394_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody394_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody394_43 : StackLang.HolProg 64 :=
.seq rawBody394_41 rawBody394_42

def rawBody394_44 : StackLang.HolProg 64 :=
.seq rawBody394_40 rawBody394_43

def rawBody394_45 : StackLang.HolProg 64 :=
.seq rawBody394_39 rawBody394_44

def rawBody394_46 : StackLang.HolProg 64 :=
.seq rawBody394_38 rawBody394_45

def rawBody394_47 : StackLang.HolProg 64 :=
.seq rawBody394_37 rawBody394_46

def rawBody394_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody394_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody394_50 : StackLang.HolProg 64 :=
.seq rawBody394_48 rawBody394_49

def rawBody394_51 : StackLang.HolProg 64 :=
.call (some (rawBody394_47, 0, 394, 2)) (Sum.inl 393) (some (rawBody394_50, 394, 3))

def rawBody394_52 : StackLang.HolProg 64 :=
.seq rawBody394_36 rawBody394_51

def rawBody394_53 : StackLang.HolProg 64 :=
.seq rawBody394_35 rawBody394_52

def rawBody394_54 : StackLang.HolProg 64 :=
.seq rawBody394_34 rawBody394_53

def rawBody394_55 : StackLang.HolProg 64 :=
.seq rawBody394_15 rawBody394_54

def rawBody394_56 : StackLang.HolProg 64 :=
.seq rawBody394_12 rawBody394_55

def rawBody394_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody394_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody394_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody394_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody394_61 : StackLang.HolProg 64 :=
.seq rawBody394_59 rawBody394_60

def rawBody394_62 : StackLang.HolProg 64 :=
.seq rawBody394_58 rawBody394_61

def rawBody394_63 : StackLang.HolProg 64 :=
.seq rawBody394_57 rawBody394_62

def rawBody394_64 : StackLang.HolProg 64 :=
.seq rawBody394_56 rawBody394_63

def rawBody394_65 : StackLang.HolProg 64 :=
.seq rawBody394_11 rawBody394_64

def rawBody394_66 : StackLang.HolProg 64 :=
.seq rawBody394_10 rawBody394_65

def rawBody394_67 : StackLang.HolProg 64 :=
.seq rawBody394_9 rawBody394_66

def rawBody394_68 : StackLang.HolProg 64 :=
.seq rawBody394_8 rawBody394_67

def rawBody394_69 : StackLang.HolProg 64 :=
.seq rawBody394_7 rawBody394_68

def rawBody394_70 : StackLang.HolProg 64 :=
.seq rawBody394_6 rawBody394_69

def rawBody394_71 : StackLang.HolProg 64 :=
.seq rawBody394_5 rawBody394_70

def rawBody394_72 : StackLang.HolProg 64 :=
.seq rawBody394_4 rawBody394_71

def rawBody394_73 : StackLang.HolProg 64 :=
.seq rawBody394_3 rawBody394_72

def rawBody394_74 : StackLang.HolProg 64 :=
.seq rawBody394_2 rawBody394_73

def rawBody394_75 : StackLang.HolProg 64 :=
.seq rawBody394_1 rawBody394_74

def rawBody394_76 : StackLang.HolProg 64 :=
.seq rawBody394_0 rawBody394_75

def raw394 : StackLang.HolProg 64 := rawBody394_76
theorem raw394_eq : StackRawCall.compTop RawInfo.rawInfo (function394 (.list [])).1 = raw394 := by
  kernel_rfl
#print axioms raw394_eq
end InitECandidate.Proofs.BackendStages
