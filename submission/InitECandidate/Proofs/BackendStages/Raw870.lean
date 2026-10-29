import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function870
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody870_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody870_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody870_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody870_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4596#64)

def rawBody870_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody870_5 : StackLang.HolProg 64 :=
.seq rawBody870_3 rawBody870_4

def rawBody870_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody870_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody870_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody870_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 870 3

def rawBody870_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody870_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody870_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody870_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody870_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody870_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody870_16 : StackLang.HolProg 64 :=
.seq rawBody870_14 rawBody870_15

def rawBody870_17 : StackLang.HolProg 64 :=
.seq rawBody870_13 rawBody870_16

def rawBody870_18 : StackLang.HolProg 64 :=
.seq rawBody870_12 rawBody870_17

def rawBody870_19 : StackLang.HolProg 64 :=
.seq rawBody870_11 rawBody870_18

def rawBody870_20 : StackLang.HolProg 64 :=
.seq rawBody870_10 rawBody870_19

def rawBody870_21 : StackLang.HolProg 64 :=
.seq rawBody870_9 rawBody870_20

def rawBody870_22 : StackLang.HolProg 64 :=
.seq rawBody870_8 rawBody870_21

def rawBody870_23 : StackLang.HolProg 64 :=
.seq rawBody870_7 rawBody870_22

def rawBody870_24 : StackLang.HolProg 64 :=
.seq rawBody870_6 rawBody870_23

def rawBody870_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody870_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody870_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody870_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody870_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody870_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody870_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody870_32 : StackLang.HolProg 64 :=
.seq rawBody870_30 rawBody870_31

def rawBody870_33 : StackLang.HolProg 64 :=
.seq rawBody870_29 rawBody870_32

def rawBody870_34 : StackLang.HolProg 64 :=
.seq rawBody870_28 rawBody870_33

def rawBody870_35 : StackLang.HolProg 64 :=
.seq rawBody870_27 rawBody870_34

def rawBody870_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody870_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody870_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody870_39 : StackLang.HolProg 64 :=
.seq rawBody870_37 rawBody870_38

def rawBody870_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody870_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def rawBody870_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody870_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def rawBody870_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def rawBody870_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def rawBody870_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody870_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody870_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def rawBody870_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody870_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody870_51 : StackLang.HolProg 64 :=
.seq rawBody870_49 rawBody870_50

def rawBody870_52 : StackLang.HolProg 64 :=
.seq rawBody870_48 rawBody870_51

def rawBody870_53 : StackLang.HolProg 64 :=
.seq rawBody870_47 rawBody870_52

def rawBody870_54 : StackLang.HolProg 64 :=
.seq rawBody870_46 rawBody870_53

def rawBody870_55 : StackLang.HolProg 64 :=
.seq rawBody870_45 rawBody870_54

def rawBody870_56 : StackLang.HolProg 64 :=
.seq rawBody870_44 rawBody870_55

def rawBody870_57 : StackLang.HolProg 64 :=
.seq rawBody870_43 rawBody870_56

def rawBody870_58 : StackLang.HolProg 64 :=
.seq rawBody870_42 rawBody870_57

def rawBody870_59 : StackLang.HolProg 64 :=
.seq rawBody870_41 rawBody870_58

def rawBody870_60 : StackLang.HolProg 64 :=
.seq rawBody870_40 rawBody870_59

def rawBody870_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64) rawBody870_39 rawBody870_60

def rawBody870_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody870_63 : StackLang.HolProg 64 :=
.seq rawBody870_61 rawBody870_62

def rawBody870_64 : StackLang.HolProg 64 :=
.seq rawBody870_36 rawBody870_63

def rawBody870_65 : StackLang.HolProg 64 :=
.call (some (rawBody870_35, 0, 870, 2)) (Sum.inl 869) (some (rawBody870_64, 870, 3))

def rawBody870_66 : StackLang.HolProg 64 :=
.seq rawBody870_26 rawBody870_65

def rawBody870_67 : StackLang.HolProg 64 :=
.seq rawBody870_25 rawBody870_66

def rawBody870_68 : StackLang.HolProg 64 :=
.seq rawBody870_24 rawBody870_67

def rawBody870_69 : StackLang.HolProg 64 :=
.seq rawBody870_5 rawBody870_68

def rawBody870_70 : StackLang.HolProg 64 :=
.seq rawBody870_2 rawBody870_69

def rawBody870_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody870_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody870_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody870_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody870_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody870_76 : StackLang.HolProg 64 :=
.seq rawBody870_74 rawBody870_75

def rawBody870_77 : StackLang.HolProg 64 :=
.seq rawBody870_73 rawBody870_76

def rawBody870_78 : StackLang.HolProg 64 :=
.seq rawBody870_72 rawBody870_77

def rawBody870_79 : StackLang.HolProg 64 :=
.seq rawBody870_71 rawBody870_78

def rawBody870_80 : StackLang.HolProg 64 :=
.seq rawBody870_70 rawBody870_79

def rawBody870_81 : StackLang.HolProg 64 :=
.seq rawBody870_1 rawBody870_80

def rawBody870_82 : StackLang.HolProg 64 :=
.seq rawBody870_0 rawBody870_81

def raw870 : StackLang.HolProg 64 := rawBody870_82
theorem raw870_eq : StackRawCall.compTop RawInfo.rawInfo (function870 (.list [])).1 = raw870 := by
  kernel_rfl
#print axioms raw870_eq
end InitECandidate.Proofs.BackendStages
