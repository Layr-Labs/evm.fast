import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function273
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody273_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody273_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody273_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody273_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody273_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody273_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody273_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody273_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody273_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody273_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody273_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 660#64)

def rawBody273_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody273_12 : StackLang.HolProg 64 :=
.seq rawBody273_10 rawBody273_11

def rawBody273_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody273_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody273_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody273_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 273 3

def rawBody273_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody273_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody273_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody273_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody273_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody273_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody273_23 : StackLang.HolProg 64 :=
.seq rawBody273_21 rawBody273_22

def rawBody273_24 : StackLang.HolProg 64 :=
.seq rawBody273_20 rawBody273_23

def rawBody273_25 : StackLang.HolProg 64 :=
.seq rawBody273_19 rawBody273_24

def rawBody273_26 : StackLang.HolProg 64 :=
.seq rawBody273_18 rawBody273_25

def rawBody273_27 : StackLang.HolProg 64 :=
.seq rawBody273_17 rawBody273_26

def rawBody273_28 : StackLang.HolProg 64 :=
.seq rawBody273_16 rawBody273_27

def rawBody273_29 : StackLang.HolProg 64 :=
.seq rawBody273_15 rawBody273_28

def rawBody273_30 : StackLang.HolProg 64 :=
.seq rawBody273_14 rawBody273_29

def rawBody273_31 : StackLang.HolProg 64 :=
.seq rawBody273_13 rawBody273_30

def rawBody273_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody273_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody273_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody273_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody273_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody273_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody273_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody273_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody273_40 : StackLang.HolProg 64 :=
.seq rawBody273_38 rawBody273_39

def rawBody273_41 : StackLang.HolProg 64 :=
.seq rawBody273_37 rawBody273_40

def rawBody273_42 : StackLang.HolProg 64 :=
.seq rawBody273_36 rawBody273_41

def rawBody273_43 : StackLang.HolProg 64 :=
.seq rawBody273_35 rawBody273_42

def rawBody273_44 : StackLang.HolProg 64 :=
.seq rawBody273_34 rawBody273_43

def rawBody273_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody273_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody273_47 : StackLang.HolProg 64 :=
.seq rawBody273_45 rawBody273_46

def rawBody273_48 : StackLang.HolProg 64 :=
.call (some (rawBody273_44, 0, 273, 2)) (Sum.inl 161) (some (rawBody273_47, 273, 3))

def rawBody273_49 : StackLang.HolProg 64 :=
.seq rawBody273_33 rawBody273_48

def rawBody273_50 : StackLang.HolProg 64 :=
.seq rawBody273_32 rawBody273_49

def rawBody273_51 : StackLang.HolProg 64 :=
.seq rawBody273_31 rawBody273_50

def rawBody273_52 : StackLang.HolProg 64 :=
.seq rawBody273_12 rawBody273_51

def rawBody273_53 : StackLang.HolProg 64 :=
.seq rawBody273_9 rawBody273_52

def rawBody273_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody273_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody273_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody273_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody273_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 8#64)

def rawBody273_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody273_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody273_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody273_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody273_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody273_64 : StackLang.HolProg 64 :=
.seq rawBody273_62 rawBody273_63

def rawBody273_65 : StackLang.HolProg 64 :=
.seq rawBody273_61 rawBody273_64

def rawBody273_66 : StackLang.HolProg 64 :=
.seq rawBody273_60 rawBody273_65

def rawBody273_67 : StackLang.HolProg 64 :=
.seq rawBody273_59 rawBody273_66

def rawBody273_68 : StackLang.HolProg 64 :=
.seq rawBody273_58 rawBody273_67

def rawBody273_69 : StackLang.HolProg 64 :=
.seq rawBody273_57 rawBody273_68

def rawBody273_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody273_71 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody273_69 rawBody273_70

def rawBody273_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody273_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody273_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody273_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody273_76 : StackLang.HolProg 64 :=
.seq rawBody273_74 rawBody273_75

def rawBody273_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody273_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody273_79 : StackLang.HolProg 64 :=
.seq rawBody273_77 rawBody273_78

def rawBody273_80 : StackLang.HolProg 64 :=
.seq rawBody273_76 rawBody273_79

def rawBody273_81 : StackLang.HolProg 64 :=
.seq rawBody273_73 rawBody273_80

def rawBody273_82 : StackLang.HolProg 64 :=
.seq rawBody273_72 rawBody273_81

def rawBody273_83 : StackLang.HolProg 64 :=
.seq rawBody273_71 rawBody273_82

def rawBody273_84 : StackLang.HolProg 64 :=
.seq rawBody273_56 rawBody273_83

def rawBody273_85 : StackLang.HolProg 64 :=
.seq rawBody273_55 rawBody273_84

def rawBody273_86 : StackLang.HolProg 64 :=
.seq rawBody273_54 rawBody273_85

def rawBody273_87 : StackLang.HolProg 64 :=
.seq rawBody273_53 rawBody273_86

def rawBody273_88 : StackLang.HolProg 64 :=
.seq rawBody273_8 rawBody273_87

def rawBody273_89 : StackLang.HolProg 64 :=
.seq rawBody273_7 rawBody273_88

def rawBody273_90 : StackLang.HolProg 64 :=
.seq rawBody273_6 rawBody273_89

def rawBody273_91 : StackLang.HolProg 64 :=
.seq rawBody273_5 rawBody273_90

def rawBody273_92 : StackLang.HolProg 64 :=
.seq rawBody273_4 rawBody273_91

def rawBody273_93 : StackLang.HolProg 64 :=
.seq rawBody273_3 rawBody273_92

def rawBody273_94 : StackLang.HolProg 64 :=
.seq rawBody273_2 rawBody273_93

def rawBody273_95 : StackLang.HolProg 64 :=
.seq rawBody273_1 rawBody273_94

def rawBody273_96 : StackLang.HolProg 64 :=
.seq rawBody273_0 rawBody273_95

def raw273 : StackLang.HolProg 64 := rawBody273_96
theorem raw273_eq : StackRawCall.compTop RawInfo.rawInfo (function273 (.list [])).1 = raw273 := by
  kernel_rfl
#print axioms raw273_eq
end InitECandidate.Proofs.BackendStages
