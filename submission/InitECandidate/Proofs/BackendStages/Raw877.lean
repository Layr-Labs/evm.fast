import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function877
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody877_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody877_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody877_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody877_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody877_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody877_5 : StackLang.HolProg 64 :=
.seq rawBody877_3 rawBody877_4

def rawBody877_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody877_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4603#64)

def rawBody877_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody877_9 : StackLang.HolProg 64 :=
.seq rawBody877_7 rawBody877_8

def rawBody877_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody877_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody877_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody877_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 877 3

def rawBody877_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody877_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody877_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody877_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody877_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody877_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody877_20 : StackLang.HolProg 64 :=
.seq rawBody877_18 rawBody877_19

def rawBody877_21 : StackLang.HolProg 64 :=
.seq rawBody877_17 rawBody877_20

def rawBody877_22 : StackLang.HolProg 64 :=
.seq rawBody877_16 rawBody877_21

def rawBody877_23 : StackLang.HolProg 64 :=
.seq rawBody877_15 rawBody877_22

def rawBody877_24 : StackLang.HolProg 64 :=
.seq rawBody877_14 rawBody877_23

def rawBody877_25 : StackLang.HolProg 64 :=
.seq rawBody877_13 rawBody877_24

def rawBody877_26 : StackLang.HolProg 64 :=
.seq rawBody877_12 rawBody877_25

def rawBody877_27 : StackLang.HolProg 64 :=
.seq rawBody877_11 rawBody877_26

def rawBody877_28 : StackLang.HolProg 64 :=
.seq rawBody877_10 rawBody877_27

def rawBody877_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody877_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody877_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody877_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody877_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody877_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody877_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody877_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody877_37 : StackLang.HolProg 64 :=
.seq rawBody877_35 rawBody877_36

def rawBody877_38 : StackLang.HolProg 64 :=
.seq rawBody877_34 rawBody877_37

def rawBody877_39 : StackLang.HolProg 64 :=
.seq rawBody877_33 rawBody877_38

def rawBody877_40 : StackLang.HolProg 64 :=
.seq rawBody877_32 rawBody877_39

def rawBody877_41 : StackLang.HolProg 64 :=
.seq rawBody877_31 rawBody877_40

def rawBody877_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody877_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody877_44 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody877_45 : StackLang.HolProg 64 :=
.seq rawBody877_43 rawBody877_44

def rawBody877_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody877_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def rawBody877_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody877_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody877_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody877_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody877_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551080#64)))

def rawBody877_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody877_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody877_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody877_56 : StackLang.HolProg 64 :=
.seq rawBody877_54 rawBody877_55

def rawBody877_57 : StackLang.HolProg 64 :=
.seq rawBody877_53 rawBody877_56

def rawBody877_58 : StackLang.HolProg 64 :=
.seq rawBody877_52 rawBody877_57

def rawBody877_59 : StackLang.HolProg 64 :=
.seq rawBody877_51 rawBody877_58

def rawBody877_60 : StackLang.HolProg 64 :=
.seq rawBody877_50 rawBody877_59

def rawBody877_61 : StackLang.HolProg 64 :=
.seq rawBody877_49 rawBody877_60

def rawBody877_62 : StackLang.HolProg 64 :=
.seq rawBody877_48 rawBody877_61

def rawBody877_63 : StackLang.HolProg 64 :=
.seq rawBody877_47 rawBody877_62

def rawBody877_64 : StackLang.HolProg 64 :=
.seq rawBody877_46 rawBody877_63

def rawBody877_65 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64) rawBody877_45 rawBody877_64

def rawBody877_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody877_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody877_68 : StackLang.HolProg 64 :=
.seq rawBody877_66 rawBody877_67

def rawBody877_69 : StackLang.HolProg 64 :=
.seq rawBody877_65 rawBody877_68

def rawBody877_70 : StackLang.HolProg 64 :=
.seq rawBody877_42 rawBody877_69

def rawBody877_71 : StackLang.HolProg 64 :=
.call (some (rawBody877_41, 0, 877, 2)) (Sum.inl 876) (some (rawBody877_70, 877, 3))

def rawBody877_72 : StackLang.HolProg 64 :=
.seq rawBody877_30 rawBody877_71

def rawBody877_73 : StackLang.HolProg 64 :=
.seq rawBody877_29 rawBody877_72

def rawBody877_74 : StackLang.HolProg 64 :=
.seq rawBody877_28 rawBody877_73

def rawBody877_75 : StackLang.HolProg 64 :=
.seq rawBody877_9 rawBody877_74

def rawBody877_76 : StackLang.HolProg 64 :=
.seq rawBody877_6 rawBody877_75

def rawBody877_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody877_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody877_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody877_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody877_81 : StackLang.HolProg 64 :=
.seq rawBody877_79 rawBody877_80

def rawBody877_82 : StackLang.HolProg 64 :=
.seq rawBody877_78 rawBody877_81

def rawBody877_83 : StackLang.HolProg 64 :=
.seq rawBody877_77 rawBody877_82

def rawBody877_84 : StackLang.HolProg 64 :=
.seq rawBody877_76 rawBody877_83

def rawBody877_85 : StackLang.HolProg 64 :=
.seq rawBody877_5 rawBody877_84

def rawBody877_86 : StackLang.HolProg 64 :=
.seq rawBody877_2 rawBody877_85

def rawBody877_87 : StackLang.HolProg 64 :=
.seq rawBody877_1 rawBody877_86

def rawBody877_88 : StackLang.HolProg 64 :=
.seq rawBody877_0 rawBody877_87

def raw877 : StackLang.HolProg 64 := rawBody877_88
theorem raw877_eq : StackRawCall.compTop RawInfo.rawInfo (function877 (.list [])).1 = raw877 := by
  kernel_rfl
#print axioms raw877_eq
end InitECandidate.Proofs.BackendStages
