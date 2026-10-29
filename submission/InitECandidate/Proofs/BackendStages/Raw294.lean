import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function294
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody294_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody294_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody294_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody294_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 800#64)

def rawBody294_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody294_5 : StackLang.HolProg 64 :=
.seq rawBody294_3 rawBody294_4

def rawBody294_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody294_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody294_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody294_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 294 3

def rawBody294_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody294_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody294_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody294_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody294_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody294_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody294_16 : StackLang.HolProg 64 :=
.seq rawBody294_14 rawBody294_15

def rawBody294_17 : StackLang.HolProg 64 :=
.seq rawBody294_13 rawBody294_16

def rawBody294_18 : StackLang.HolProg 64 :=
.seq rawBody294_12 rawBody294_17

def rawBody294_19 : StackLang.HolProg 64 :=
.seq rawBody294_11 rawBody294_18

def rawBody294_20 : StackLang.HolProg 64 :=
.seq rawBody294_10 rawBody294_19

def rawBody294_21 : StackLang.HolProg 64 :=
.seq rawBody294_9 rawBody294_20

def rawBody294_22 : StackLang.HolProg 64 :=
.seq rawBody294_8 rawBody294_21

def rawBody294_23 : StackLang.HolProg 64 :=
.seq rawBody294_7 rawBody294_22

def rawBody294_24 : StackLang.HolProg 64 :=
.seq rawBody294_6 rawBody294_23

def rawBody294_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody294_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody294_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody294_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody294_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody294_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody294_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody294_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody294_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody294_34 : StackLang.HolProg 64 :=
.seq rawBody294_32 rawBody294_33

def rawBody294_35 : StackLang.HolProg 64 :=
.seq rawBody294_31 rawBody294_34

def rawBody294_36 : StackLang.HolProg 64 :=
.seq rawBody294_30 rawBody294_35

def rawBody294_37 : StackLang.HolProg 64 :=
.seq rawBody294_29 rawBody294_36

def rawBody294_38 : StackLang.HolProg 64 :=
.seq rawBody294_28 rawBody294_37

def rawBody294_39 : StackLang.HolProg 64 :=
.seq rawBody294_27 rawBody294_38

def rawBody294_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody294_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody294_42 : StackLang.HolProg 64 :=
.seq rawBody294_40 rawBody294_41

def rawBody294_43 : StackLang.HolProg 64 :=
.call (some (rawBody294_39, 0, 294, 2)) (Sum.inl 186) (some (rawBody294_42, 294, 3))

def rawBody294_44 : StackLang.HolProg 64 :=
.seq rawBody294_26 rawBody294_43

def rawBody294_45 : StackLang.HolProg 64 :=
.seq rawBody294_25 rawBody294_44

def rawBody294_46 : StackLang.HolProg 64 :=
.seq rawBody294_24 rawBody294_45

def rawBody294_47 : StackLang.HolProg 64 :=
.seq rawBody294_5 rawBody294_46

def rawBody294_48 : StackLang.HolProg 64 :=
.seq rawBody294_2 rawBody294_47

def rawBody294_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody294_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody294_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody294_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody294_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody294_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody294_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody294_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody294_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody294_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody294_59 : StackLang.HolProg 64 :=
.seq rawBody294_57 rawBody294_58

def rawBody294_60 : StackLang.HolProg 64 :=
.seq rawBody294_56 rawBody294_59

def rawBody294_61 : StackLang.HolProg 64 :=
.seq rawBody294_55 rawBody294_60

def rawBody294_62 : StackLang.HolProg 64 :=
.seq rawBody294_54 rawBody294_61

def rawBody294_63 : StackLang.HolProg 64 :=
.seq rawBody294_53 rawBody294_62

def rawBody294_64 : StackLang.HolProg 64 :=
.seq rawBody294_52 rawBody294_63

def rawBody294_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody294_66 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody294_64 rawBody294_65

def rawBody294_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody294_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody294_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody294_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody294_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody294_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody294_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody294_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody294_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody294_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody294_77 : StackLang.HolProg 64 :=
.seq rawBody294_75 rawBody294_76

def rawBody294_78 : StackLang.HolProg 64 :=
.seq rawBody294_74 rawBody294_77

def rawBody294_79 : StackLang.HolProg 64 :=
.seq rawBody294_73 rawBody294_78

def rawBody294_80 : StackLang.HolProg 64 :=
.seq rawBody294_72 rawBody294_79

def rawBody294_81 : StackLang.HolProg 64 :=
.seq rawBody294_71 rawBody294_80

def rawBody294_82 : StackLang.HolProg 64 :=
.seq rawBody294_70 rawBody294_81

def rawBody294_83 : StackLang.HolProg 64 :=
.seq rawBody294_69 rawBody294_82

def rawBody294_84 : StackLang.HolProg 64 :=
.seq rawBody294_68 rawBody294_83

def rawBody294_85 : StackLang.HolProg 64 :=
.seq rawBody294_67 rawBody294_84

def rawBody294_86 : StackLang.HolProg 64 :=
.seq rawBody294_66 rawBody294_85

def rawBody294_87 : StackLang.HolProg 64 :=
.seq rawBody294_51 rawBody294_86

def rawBody294_88 : StackLang.HolProg 64 :=
.seq rawBody294_50 rawBody294_87

def rawBody294_89 : StackLang.HolProg 64 :=
.seq rawBody294_49 rawBody294_88

def rawBody294_90 : StackLang.HolProg 64 :=
.seq rawBody294_48 rawBody294_89

def rawBody294_91 : StackLang.HolProg 64 :=
.seq rawBody294_1 rawBody294_90

def rawBody294_92 : StackLang.HolProg 64 :=
.seq rawBody294_0 rawBody294_91

def raw294 : StackLang.HolProg 64 := rawBody294_92
theorem raw294_eq : StackRawCall.compTop RawInfo.rawInfo (function294 (.list [])).1 = raw294 := by
  kernel_rfl
#print axioms raw294_eq
end InitECandidate.Proofs.BackendStages
