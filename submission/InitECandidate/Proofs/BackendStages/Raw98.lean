import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function98
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody98_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody98_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody98_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody98_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody98_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody98_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551576#64))

def rawBody98_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody98_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody98_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 640#64)

def rawBody98_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody98_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody98_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 43#64)

def rawBody98_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody98_13 : StackLang.HolProg 64 :=
.seq rawBody98_11 rawBody98_12

def rawBody98_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody98_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody98_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody98_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 98 3

def rawBody98_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody98_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody98_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody98_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody98_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody98_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody98_24 : StackLang.HolProg 64 :=
.seq rawBody98_22 rawBody98_23

def rawBody98_25 : StackLang.HolProg 64 :=
.seq rawBody98_21 rawBody98_24

def rawBody98_26 : StackLang.HolProg 64 :=
.seq rawBody98_20 rawBody98_25

def rawBody98_27 : StackLang.HolProg 64 :=
.seq rawBody98_19 rawBody98_26

def rawBody98_28 : StackLang.HolProg 64 :=
.seq rawBody98_18 rawBody98_27

def rawBody98_29 : StackLang.HolProg 64 :=
.seq rawBody98_17 rawBody98_28

def rawBody98_30 : StackLang.HolProg 64 :=
.seq rawBody98_16 rawBody98_29

def rawBody98_31 : StackLang.HolProg 64 :=
.seq rawBody98_15 rawBody98_30

def rawBody98_32 : StackLang.HolProg 64 :=
.seq rawBody98_14 rawBody98_31

def rawBody98_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody98_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody98_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody98_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody98_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody98_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody98_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody98_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody98_41 : StackLang.HolProg 64 :=
.seq rawBody98_39 rawBody98_40

def rawBody98_42 : StackLang.HolProg 64 :=
.seq rawBody98_38 rawBody98_41

def rawBody98_43 : StackLang.HolProg 64 :=
.seq rawBody98_37 rawBody98_42

def rawBody98_44 : StackLang.HolProg 64 :=
.seq rawBody98_36 rawBody98_43

def rawBody98_45 : StackLang.HolProg 64 :=
.seq rawBody98_35 rawBody98_44

def rawBody98_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody98_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody98_48 : StackLang.HolProg 64 :=
.seq rawBody98_46 rawBody98_47

def rawBody98_49 : StackLang.HolProg 64 :=
.call (some (rawBody98_45, 0, 98, 2)) (Sum.inl 68) (some (rawBody98_48, 98, 3))

def rawBody98_50 : StackLang.HolProg 64 :=
.seq rawBody98_34 rawBody98_49

def rawBody98_51 : StackLang.HolProg 64 :=
.seq rawBody98_33 rawBody98_50

def rawBody98_52 : StackLang.HolProg 64 :=
.seq rawBody98_32 rawBody98_51

def rawBody98_53 : StackLang.HolProg 64 :=
.seq rawBody98_13 rawBody98_52

def rawBody98_54 : StackLang.HolProg 64 :=
.seq rawBody98_10 rawBody98_53

def rawBody98_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody98_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody98_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody98_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody98_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551576#64)))

def rawBody98_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody98_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody98_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody98_63 : StackLang.HolProg 64 :=
.seq rawBody98_61 rawBody98_62

def rawBody98_64 : StackLang.HolProg 64 :=
.seq rawBody98_60 rawBody98_63

def rawBody98_65 : StackLang.HolProg 64 :=
.seq rawBody98_59 rawBody98_64

def rawBody98_66 : StackLang.HolProg 64 :=
.seq rawBody98_58 rawBody98_65

def rawBody98_67 : StackLang.HolProg 64 :=
.seq rawBody98_57 rawBody98_66

def rawBody98_68 : StackLang.HolProg 64 :=
.seq rawBody98_56 rawBody98_67

def rawBody98_69 : StackLang.HolProg 64 :=
.seq rawBody98_55 rawBody98_68

def rawBody98_70 : StackLang.HolProg 64 :=
.seq rawBody98_54 rawBody98_69

def rawBody98_71 : StackLang.HolProg 64 :=
.seq rawBody98_9 rawBody98_70

def rawBody98_72 : StackLang.HolProg 64 :=
.seq rawBody98_8 rawBody98_71

def rawBody98_73 : StackLang.HolProg 64 :=
.seq rawBody98_7 rawBody98_72

def rawBody98_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody98_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody98_76 : StackLang.HolProg 64 :=
.seq rawBody98_74 rawBody98_75

def rawBody98_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody98_73 rawBody98_76

def rawBody98_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody98_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody98_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody98_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody98_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody98_83 : StackLang.HolProg 64 :=
.seq rawBody98_81 rawBody98_82

def rawBody98_84 : StackLang.HolProg 64 :=
.seq rawBody98_80 rawBody98_83

def rawBody98_85 : StackLang.HolProg 64 :=
.seq rawBody98_79 rawBody98_84

def rawBody98_86 : StackLang.HolProg 64 :=
.seq rawBody98_78 rawBody98_85

def rawBody98_87 : StackLang.HolProg 64 :=
.seq rawBody98_77 rawBody98_86

def rawBody98_88 : StackLang.HolProg 64 :=
.seq rawBody98_6 rawBody98_87

def rawBody98_89 : StackLang.HolProg 64 :=
.seq rawBody98_5 rawBody98_88

def rawBody98_90 : StackLang.HolProg 64 :=
.seq rawBody98_4 rawBody98_89

def rawBody98_91 : StackLang.HolProg 64 :=
.seq rawBody98_3 rawBody98_90

def rawBody98_92 : StackLang.HolProg 64 :=
.seq rawBody98_2 rawBody98_91

def rawBody98_93 : StackLang.HolProg 64 :=
.seq rawBody98_1 rawBody98_92

def rawBody98_94 : StackLang.HolProg 64 :=
.seq rawBody98_0 rawBody98_93

def raw98 : StackLang.HolProg 64 := rawBody98_94
theorem raw98_eq : StackRawCall.compTop RawInfo.rawInfo (function98 (.list [])).1 = raw98 := by
  kernel_rfl
#print axioms raw98_eq
end InitECandidate.Proofs.BackendStages
