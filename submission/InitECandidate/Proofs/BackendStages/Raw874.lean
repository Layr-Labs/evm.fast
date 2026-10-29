import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function874
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody874_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody874_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody874_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody874_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4600#64)

def rawBody874_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody874_5 : StackLang.HolProg 64 :=
.seq rawBody874_3 rawBody874_4

def rawBody874_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody874_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody874_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody874_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 874 3

def rawBody874_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody874_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody874_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody874_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody874_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody874_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody874_16 : StackLang.HolProg 64 :=
.seq rawBody874_14 rawBody874_15

def rawBody874_17 : StackLang.HolProg 64 :=
.seq rawBody874_13 rawBody874_16

def rawBody874_18 : StackLang.HolProg 64 :=
.seq rawBody874_12 rawBody874_17

def rawBody874_19 : StackLang.HolProg 64 :=
.seq rawBody874_11 rawBody874_18

def rawBody874_20 : StackLang.HolProg 64 :=
.seq rawBody874_10 rawBody874_19

def rawBody874_21 : StackLang.HolProg 64 :=
.seq rawBody874_9 rawBody874_20

def rawBody874_22 : StackLang.HolProg 64 :=
.seq rawBody874_8 rawBody874_21

def rawBody874_23 : StackLang.HolProg 64 :=
.seq rawBody874_7 rawBody874_22

def rawBody874_24 : StackLang.HolProg 64 :=
.seq rawBody874_6 rawBody874_23

def rawBody874_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody874_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody874_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody874_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody874_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody874_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody874_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody874_32 : StackLang.HolProg 64 :=
.seq rawBody874_30 rawBody874_31

def rawBody874_33 : StackLang.HolProg 64 :=
.seq rawBody874_29 rawBody874_32

def rawBody874_34 : StackLang.HolProg 64 :=
.seq rawBody874_28 rawBody874_33

def rawBody874_35 : StackLang.HolProg 64 :=
.seq rawBody874_27 rawBody874_34

def rawBody874_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody874_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody874_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody874_39 : StackLang.HolProg 64 :=
.seq rawBody874_37 rawBody874_38

def rawBody874_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody874_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def rawBody874_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody874_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def rawBody874_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def rawBody874_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 5#64)

def rawBody874_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody874_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody874_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def rawBody874_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody874_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody874_51 : StackLang.HolProg 64 :=
.seq rawBody874_49 rawBody874_50

def rawBody874_52 : StackLang.HolProg 64 :=
.seq rawBody874_48 rawBody874_51

def rawBody874_53 : StackLang.HolProg 64 :=
.seq rawBody874_47 rawBody874_52

def rawBody874_54 : StackLang.HolProg 64 :=
.seq rawBody874_46 rawBody874_53

def rawBody874_55 : StackLang.HolProg 64 :=
.seq rawBody874_45 rawBody874_54

def rawBody874_56 : StackLang.HolProg 64 :=
.seq rawBody874_44 rawBody874_55

def rawBody874_57 : StackLang.HolProg 64 :=
.seq rawBody874_43 rawBody874_56

def rawBody874_58 : StackLang.HolProg 64 :=
.seq rawBody874_42 rawBody874_57

def rawBody874_59 : StackLang.HolProg 64 :=
.seq rawBody874_41 rawBody874_58

def rawBody874_60 : StackLang.HolProg 64 :=
.seq rawBody874_40 rawBody874_59

def rawBody874_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64) rawBody874_39 rawBody874_60

def rawBody874_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody874_63 : StackLang.HolProg 64 :=
.seq rawBody874_61 rawBody874_62

def rawBody874_64 : StackLang.HolProg 64 :=
.seq rawBody874_36 rawBody874_63

def rawBody874_65 : StackLang.HolProg 64 :=
.call (some (rawBody874_35, 0, 874, 2)) (Sum.inl 873) (some (rawBody874_64, 874, 3))

def rawBody874_66 : StackLang.HolProg 64 :=
.seq rawBody874_26 rawBody874_65

def rawBody874_67 : StackLang.HolProg 64 :=
.seq rawBody874_25 rawBody874_66

def rawBody874_68 : StackLang.HolProg 64 :=
.seq rawBody874_24 rawBody874_67

def rawBody874_69 : StackLang.HolProg 64 :=
.seq rawBody874_5 rawBody874_68

def rawBody874_70 : StackLang.HolProg 64 :=
.seq rawBody874_2 rawBody874_69

def rawBody874_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody874_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody874_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody874_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody874_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody874_76 : StackLang.HolProg 64 :=
.seq rawBody874_74 rawBody874_75

def rawBody874_77 : StackLang.HolProg 64 :=
.seq rawBody874_73 rawBody874_76

def rawBody874_78 : StackLang.HolProg 64 :=
.seq rawBody874_72 rawBody874_77

def rawBody874_79 : StackLang.HolProg 64 :=
.seq rawBody874_71 rawBody874_78

def rawBody874_80 : StackLang.HolProg 64 :=
.seq rawBody874_70 rawBody874_79

def rawBody874_81 : StackLang.HolProg 64 :=
.seq rawBody874_1 rawBody874_80

def rawBody874_82 : StackLang.HolProg 64 :=
.seq rawBody874_0 rawBody874_81

def raw874 : StackLang.HolProg 64 := rawBody874_82
theorem raw874_eq : StackRawCall.compTop RawInfo.rawInfo (function874 (.list [])).1 = raw874 := by
  kernel_rfl
#print axioms raw874_eq
end InitECandidate.Proofs.BackendStages
