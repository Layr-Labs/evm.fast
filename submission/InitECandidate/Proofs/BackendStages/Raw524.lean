import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function524
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody524_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody524_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody524_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody524_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody524_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody524_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody524_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def rawBody524_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody524_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody524_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody524_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody524_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody524_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody524_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1717#64)

def rawBody524_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody524_15 : StackLang.HolProg 64 :=
.seq rawBody524_13 rawBody524_14

def rawBody524_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody524_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody524_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody524_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 524 3

def rawBody524_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody524_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody524_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody524_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody524_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody524_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody524_26 : StackLang.HolProg 64 :=
.seq rawBody524_24 rawBody524_25

def rawBody524_27 : StackLang.HolProg 64 :=
.seq rawBody524_23 rawBody524_26

def rawBody524_28 : StackLang.HolProg 64 :=
.seq rawBody524_22 rawBody524_27

def rawBody524_29 : StackLang.HolProg 64 :=
.seq rawBody524_21 rawBody524_28

def rawBody524_30 : StackLang.HolProg 64 :=
.seq rawBody524_20 rawBody524_29

def rawBody524_31 : StackLang.HolProg 64 :=
.seq rawBody524_19 rawBody524_30

def rawBody524_32 : StackLang.HolProg 64 :=
.seq rawBody524_18 rawBody524_31

def rawBody524_33 : StackLang.HolProg 64 :=
.seq rawBody524_17 rawBody524_32

def rawBody524_34 : StackLang.HolProg 64 :=
.seq rawBody524_16 rawBody524_33

def rawBody524_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody524_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody524_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody524_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody524_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody524_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody524_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody524_42 : StackLang.HolProg 64 :=
.seq rawBody524_40 rawBody524_41

def rawBody524_43 : StackLang.HolProg 64 :=
.seq rawBody524_39 rawBody524_42

def rawBody524_44 : StackLang.HolProg 64 :=
.seq rawBody524_38 rawBody524_43

def rawBody524_45 : StackLang.HolProg 64 :=
.seq rawBody524_37 rawBody524_44

def rawBody524_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody524_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody524_48 : StackLang.HolProg 64 :=
.seq rawBody524_46 rawBody524_47

def rawBody524_49 : StackLang.HolProg 64 :=
.call (some (rawBody524_45, 0, 524, 2)) (Sum.inl 490) (some (rawBody524_48, 524, 3))

def rawBody524_50 : StackLang.HolProg 64 :=
.seq rawBody524_36 rawBody524_49

def rawBody524_51 : StackLang.HolProg 64 :=
.seq rawBody524_35 rawBody524_50

def rawBody524_52 : StackLang.HolProg 64 :=
.seq rawBody524_34 rawBody524_51

def rawBody524_53 : StackLang.HolProg 64 :=
.seq rawBody524_15 rawBody524_52

def rawBody524_54 : StackLang.HolProg 64 :=
.seq rawBody524_12 rawBody524_53

def rawBody524_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody524_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody524_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody524_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody524_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody524_60 : StackLang.HolProg 64 :=
.seq rawBody524_58 rawBody524_59

def rawBody524_61 : StackLang.HolProg 64 :=
.seq rawBody524_57 rawBody524_60

def rawBody524_62 : StackLang.HolProg 64 :=
.seq rawBody524_56 rawBody524_61

def rawBody524_63 : StackLang.HolProg 64 :=
.seq rawBody524_55 rawBody524_62

def rawBody524_64 : StackLang.HolProg 64 :=
.seq rawBody524_54 rawBody524_63

def rawBody524_65 : StackLang.HolProg 64 :=
.seq rawBody524_11 rawBody524_64

def rawBody524_66 : StackLang.HolProg 64 :=
.seq rawBody524_10 rawBody524_65

def rawBody524_67 : StackLang.HolProg 64 :=
.seq rawBody524_9 rawBody524_66

def rawBody524_68 : StackLang.HolProg 64 :=
.seq rawBody524_8 rawBody524_67

def rawBody524_69 : StackLang.HolProg 64 :=
.seq rawBody524_7 rawBody524_68

def rawBody524_70 : StackLang.HolProg 64 :=
.seq rawBody524_6 rawBody524_69

def rawBody524_71 : StackLang.HolProg 64 :=
.seq rawBody524_5 rawBody524_70

def rawBody524_72 : StackLang.HolProg 64 :=
.seq rawBody524_4 rawBody524_71

def rawBody524_73 : StackLang.HolProg 64 :=
.seq rawBody524_3 rawBody524_72

def rawBody524_74 : StackLang.HolProg 64 :=
.seq rawBody524_2 rawBody524_73

def rawBody524_75 : StackLang.HolProg 64 :=
.seq rawBody524_1 rawBody524_74

def rawBody524_76 : StackLang.HolProg 64 :=
.seq rawBody524_0 rawBody524_75

def raw524 : StackLang.HolProg 64 := rawBody524_76
theorem raw524_eq : StackRawCall.compTop RawInfo.rawInfo (function524 (.list [])).1 = raw524 := by
  kernel_rfl
#print axioms raw524_eq
end InitECandidate.Proofs.BackendStages
