import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function600
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody600_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody600_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody600_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody600_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody600_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody600_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody600_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 160#64))

def rawBody600_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody600_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody600_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody600_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def rawBody600_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody600_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody600_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody600_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2275#64)

def rawBody600_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody600_16 : StackLang.HolProg 64 :=
.seq rawBody600_14 rawBody600_15

def rawBody600_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody600_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody600_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody600_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 600 3

def rawBody600_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody600_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody600_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody600_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody600_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody600_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody600_27 : StackLang.HolProg 64 :=
.seq rawBody600_25 rawBody600_26

def rawBody600_28 : StackLang.HolProg 64 :=
.seq rawBody600_24 rawBody600_27

def rawBody600_29 : StackLang.HolProg 64 :=
.seq rawBody600_23 rawBody600_28

def rawBody600_30 : StackLang.HolProg 64 :=
.seq rawBody600_22 rawBody600_29

def rawBody600_31 : StackLang.HolProg 64 :=
.seq rawBody600_21 rawBody600_30

def rawBody600_32 : StackLang.HolProg 64 :=
.seq rawBody600_20 rawBody600_31

def rawBody600_33 : StackLang.HolProg 64 :=
.seq rawBody600_19 rawBody600_32

def rawBody600_34 : StackLang.HolProg 64 :=
.seq rawBody600_18 rawBody600_33

def rawBody600_35 : StackLang.HolProg 64 :=
.seq rawBody600_17 rawBody600_34

def rawBody600_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody600_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody600_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody600_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody600_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody600_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody600_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody600_43 : StackLang.HolProg 64 :=
.seq rawBody600_41 rawBody600_42

def rawBody600_44 : StackLang.HolProg 64 :=
.seq rawBody600_40 rawBody600_43

def rawBody600_45 : StackLang.HolProg 64 :=
.seq rawBody600_39 rawBody600_44

def rawBody600_46 : StackLang.HolProg 64 :=
.seq rawBody600_38 rawBody600_45

def rawBody600_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody600_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody600_49 : StackLang.HolProg 64 :=
.seq rawBody600_47 rawBody600_48

def rawBody600_50 : StackLang.HolProg 64 :=
.call (some (rawBody600_46, 0, 600, 2)) (Sum.inl 391) (some (rawBody600_49, 600, 3))

def rawBody600_51 : StackLang.HolProg 64 :=
.seq rawBody600_37 rawBody600_50

def rawBody600_52 : StackLang.HolProg 64 :=
.seq rawBody600_36 rawBody600_51

def rawBody600_53 : StackLang.HolProg 64 :=
.seq rawBody600_35 rawBody600_52

def rawBody600_54 : StackLang.HolProg 64 :=
.seq rawBody600_16 rawBody600_53

def rawBody600_55 : StackLang.HolProg 64 :=
.seq rawBody600_13 rawBody600_54

def rawBody600_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody600_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody600_58 : StackLang.HolProg 64 :=
.seq rawBody600_56 rawBody600_57

def rawBody600_59 : StackLang.HolProg 64 :=
.seq rawBody600_55 rawBody600_58

def rawBody600_60 : StackLang.HolProg 64 :=
.seq rawBody600_12 rawBody600_59

def rawBody600_61 : StackLang.HolProg 64 :=
.seq rawBody600_11 rawBody600_60

def rawBody600_62 : StackLang.HolProg 64 :=
.seq rawBody600_10 rawBody600_61

def rawBody600_63 : StackLang.HolProg 64 :=
.seq rawBody600_9 rawBody600_62

def rawBody600_64 : StackLang.HolProg 64 :=
.seq rawBody600_8 rawBody600_63

def rawBody600_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody600_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody600_67 : StackLang.HolProg 64 :=
.seq rawBody600_65 rawBody600_66

def rawBody600_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody600_64 rawBody600_67

def rawBody600_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody600_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody600_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody600_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody600_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody600_74 : StackLang.HolProg 64 :=
.seq rawBody600_72 rawBody600_73

def rawBody600_75 : StackLang.HolProg 64 :=
.seq rawBody600_71 rawBody600_74

def rawBody600_76 : StackLang.HolProg 64 :=
.seq rawBody600_70 rawBody600_75

def rawBody600_77 : StackLang.HolProg 64 :=
.seq rawBody600_69 rawBody600_76

def rawBody600_78 : StackLang.HolProg 64 :=
.seq rawBody600_68 rawBody600_77

def rawBody600_79 : StackLang.HolProg 64 :=
.seq rawBody600_7 rawBody600_78

def rawBody600_80 : StackLang.HolProg 64 :=
.seq rawBody600_6 rawBody600_79

def rawBody600_81 : StackLang.HolProg 64 :=
.seq rawBody600_5 rawBody600_80

def rawBody600_82 : StackLang.HolProg 64 :=
.seq rawBody600_4 rawBody600_81

def rawBody600_83 : StackLang.HolProg 64 :=
.seq rawBody600_3 rawBody600_82

def rawBody600_84 : StackLang.HolProg 64 :=
.seq rawBody600_2 rawBody600_83

def rawBody600_85 : StackLang.HolProg 64 :=
.seq rawBody600_1 rawBody600_84

def rawBody600_86 : StackLang.HolProg 64 :=
.seq rawBody600_0 rawBody600_85

def raw600 : StackLang.HolProg 64 := rawBody600_86
theorem raw600_eq : StackRawCall.compTop RawInfo.rawInfo (function600 (.list [])).1 = raw600 := by
  kernel_rfl
#print axioms raw600_eq
end InitECandidate.Proofs.BackendStages
