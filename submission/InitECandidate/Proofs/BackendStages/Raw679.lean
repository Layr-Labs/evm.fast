import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function679
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody679_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody679_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody679_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody679_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody679_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody679_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody679_6 : StackLang.HolProg 64 :=
.seq rawBody679_4 rawBody679_5

def rawBody679_7 : StackLang.HolProg 64 :=
.seq rawBody679_3 rawBody679_6

def rawBody679_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody679_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2793#64)

def rawBody679_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody679_11 : StackLang.HolProg 64 :=
.seq rawBody679_9 rawBody679_10

def rawBody679_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody679_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody679_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody679_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 679 3

def rawBody679_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody679_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody679_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody679_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody679_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody679_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody679_22 : StackLang.HolProg 64 :=
.seq rawBody679_20 rawBody679_21

def rawBody679_23 : StackLang.HolProg 64 :=
.seq rawBody679_19 rawBody679_22

def rawBody679_24 : StackLang.HolProg 64 :=
.seq rawBody679_18 rawBody679_23

def rawBody679_25 : StackLang.HolProg 64 :=
.seq rawBody679_17 rawBody679_24

def rawBody679_26 : StackLang.HolProg 64 :=
.seq rawBody679_16 rawBody679_25

def rawBody679_27 : StackLang.HolProg 64 :=
.seq rawBody679_15 rawBody679_26

def rawBody679_28 : StackLang.HolProg 64 :=
.seq rawBody679_14 rawBody679_27

def rawBody679_29 : StackLang.HolProg 64 :=
.seq rawBody679_13 rawBody679_28

def rawBody679_30 : StackLang.HolProg 64 :=
.seq rawBody679_12 rawBody679_29

def rawBody679_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody679_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody679_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody679_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody679_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody679_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody679_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody679_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody679_39 : StackLang.HolProg 64 :=
.seq rawBody679_37 rawBody679_38

def rawBody679_40 : StackLang.HolProg 64 :=
.seq rawBody679_36 rawBody679_39

def rawBody679_41 : StackLang.HolProg 64 :=
.seq rawBody679_35 rawBody679_40

def rawBody679_42 : StackLang.HolProg 64 :=
.seq rawBody679_34 rawBody679_41

def rawBody679_43 : StackLang.HolProg 64 :=
.seq rawBody679_33 rawBody679_42

def rawBody679_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody679_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody679_46 : StackLang.HolProg 64 :=
.seq rawBody679_44 rawBody679_45

def rawBody679_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody679_48 : StackLang.HolProg 64 :=
.seq rawBody679_46 rawBody679_47

def rawBody679_49 : StackLang.HolProg 64 :=
.call (some (rawBody679_43, 0, 679, 2)) (Sum.inl 78) (some (rawBody679_48, 679, 3))

def rawBody679_50 : StackLang.HolProg 64 :=
.seq rawBody679_32 rawBody679_49

def rawBody679_51 : StackLang.HolProg 64 :=
.seq rawBody679_31 rawBody679_50

def rawBody679_52 : StackLang.HolProg 64 :=
.seq rawBody679_30 rawBody679_51

def rawBody679_53 : StackLang.HolProg 64 :=
.seq rawBody679_11 rawBody679_52

def rawBody679_54 : StackLang.HolProg 64 :=
.seq rawBody679_8 rawBody679_53

def rawBody679_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody679_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody679_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 15230403791020821917#64)

def rawBody679_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody679_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody679_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 754611498739239741#64)

def rawBody679_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody679_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody679_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7381016538464732716#64)

def rawBody679_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody679_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody679_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1011752739694698287#64)

def rawBody679_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody679_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody679_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody679_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody679_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody679_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody679_73 : StackLang.HolProg 64 :=
.seq rawBody679_71 rawBody679_72

def rawBody679_74 : StackLang.HolProg 64 :=
.seq rawBody679_70 rawBody679_73

def rawBody679_75 : StackLang.HolProg 64 :=
.seq rawBody679_69 rawBody679_74

def rawBody679_76 : StackLang.HolProg 64 :=
.seq rawBody679_68 rawBody679_75

def rawBody679_77 : StackLang.HolProg 64 :=
.seq rawBody679_67 rawBody679_76

def rawBody679_78 : StackLang.HolProg 64 :=
.seq rawBody679_66 rawBody679_77

def rawBody679_79 : StackLang.HolProg 64 :=
.seq rawBody679_65 rawBody679_78

def rawBody679_80 : StackLang.HolProg 64 :=
.seq rawBody679_64 rawBody679_79

def rawBody679_81 : StackLang.HolProg 64 :=
.seq rawBody679_63 rawBody679_80

def rawBody679_82 : StackLang.HolProg 64 :=
.seq rawBody679_62 rawBody679_81

def rawBody679_83 : StackLang.HolProg 64 :=
.seq rawBody679_61 rawBody679_82

def rawBody679_84 : StackLang.HolProg 64 :=
.seq rawBody679_60 rawBody679_83

def rawBody679_85 : StackLang.HolProg 64 :=
.seq rawBody679_59 rawBody679_84

def rawBody679_86 : StackLang.HolProg 64 :=
.seq rawBody679_58 rawBody679_85

def rawBody679_87 : StackLang.HolProg 64 :=
.seq rawBody679_57 rawBody679_86

def rawBody679_88 : StackLang.HolProg 64 :=
.seq rawBody679_56 rawBody679_87

def rawBody679_89 : StackLang.HolProg 64 :=
.seq rawBody679_55 rawBody679_88

def rawBody679_90 : StackLang.HolProg 64 :=
.seq rawBody679_54 rawBody679_89

def rawBody679_91 : StackLang.HolProg 64 :=
.seq rawBody679_7 rawBody679_90

def rawBody679_92 : StackLang.HolProg 64 :=
.seq rawBody679_2 rawBody679_91

def rawBody679_93 : StackLang.HolProg 64 :=
.seq rawBody679_1 rawBody679_92

def rawBody679_94 : StackLang.HolProg 64 :=
.seq rawBody679_0 rawBody679_93

def raw679 : StackLang.HolProg 64 := rawBody679_94
theorem raw679_eq : StackRawCall.compTop RawInfo.rawInfo (function679 (.list [])).1 = raw679 := by
  kernel_rfl
#print axioms raw679_eq
end InitECandidate.Proofs.BackendStages
