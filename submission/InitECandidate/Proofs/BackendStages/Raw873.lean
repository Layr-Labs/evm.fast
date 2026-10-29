import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function873
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody873_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody873_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody873_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody873_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4599#64)

def rawBody873_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody873_5 : StackLang.HolProg 64 :=
.seq rawBody873_3 rawBody873_4

def rawBody873_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody873_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody873_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody873_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 873 3

def rawBody873_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody873_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody873_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody873_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody873_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody873_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody873_16 : StackLang.HolProg 64 :=
.seq rawBody873_14 rawBody873_15

def rawBody873_17 : StackLang.HolProg 64 :=
.seq rawBody873_13 rawBody873_16

def rawBody873_18 : StackLang.HolProg 64 :=
.seq rawBody873_12 rawBody873_17

def rawBody873_19 : StackLang.HolProg 64 :=
.seq rawBody873_11 rawBody873_18

def rawBody873_20 : StackLang.HolProg 64 :=
.seq rawBody873_10 rawBody873_19

def rawBody873_21 : StackLang.HolProg 64 :=
.seq rawBody873_9 rawBody873_20

def rawBody873_22 : StackLang.HolProg 64 :=
.seq rawBody873_8 rawBody873_21

def rawBody873_23 : StackLang.HolProg 64 :=
.seq rawBody873_7 rawBody873_22

def rawBody873_24 : StackLang.HolProg 64 :=
.seq rawBody873_6 rawBody873_23

def rawBody873_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody873_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody873_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody873_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody873_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody873_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody873_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody873_32 : StackLang.HolProg 64 :=
.seq rawBody873_30 rawBody873_31

def rawBody873_33 : StackLang.HolProg 64 :=
.seq rawBody873_29 rawBody873_32

def rawBody873_34 : StackLang.HolProg 64 :=
.seq rawBody873_28 rawBody873_33

def rawBody873_35 : StackLang.HolProg 64 :=
.seq rawBody873_27 rawBody873_34

def rawBody873_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody873_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody873_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody873_39 : StackLang.HolProg 64 :=
.seq rawBody873_37 rawBody873_38

def rawBody873_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody873_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def rawBody873_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody873_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def rawBody873_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def rawBody873_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4#64)

def rawBody873_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody873_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody873_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def rawBody873_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody873_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody873_51 : StackLang.HolProg 64 :=
.seq rawBody873_49 rawBody873_50

def rawBody873_52 : StackLang.HolProg 64 :=
.seq rawBody873_48 rawBody873_51

def rawBody873_53 : StackLang.HolProg 64 :=
.seq rawBody873_47 rawBody873_52

def rawBody873_54 : StackLang.HolProg 64 :=
.seq rawBody873_46 rawBody873_53

def rawBody873_55 : StackLang.HolProg 64 :=
.seq rawBody873_45 rawBody873_54

def rawBody873_56 : StackLang.HolProg 64 :=
.seq rawBody873_44 rawBody873_55

def rawBody873_57 : StackLang.HolProg 64 :=
.seq rawBody873_43 rawBody873_56

def rawBody873_58 : StackLang.HolProg 64 :=
.seq rawBody873_42 rawBody873_57

def rawBody873_59 : StackLang.HolProg 64 :=
.seq rawBody873_41 rawBody873_58

def rawBody873_60 : StackLang.HolProg 64 :=
.seq rawBody873_40 rawBody873_59

def rawBody873_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64) rawBody873_39 rawBody873_60

def rawBody873_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody873_63 : StackLang.HolProg 64 :=
.seq rawBody873_61 rawBody873_62

def rawBody873_64 : StackLang.HolProg 64 :=
.seq rawBody873_36 rawBody873_63

def rawBody873_65 : StackLang.HolProg 64 :=
.call (some (rawBody873_35, 0, 873, 2)) (Sum.inl 872) (some (rawBody873_64, 873, 3))

def rawBody873_66 : StackLang.HolProg 64 :=
.seq rawBody873_26 rawBody873_65

def rawBody873_67 : StackLang.HolProg 64 :=
.seq rawBody873_25 rawBody873_66

def rawBody873_68 : StackLang.HolProg 64 :=
.seq rawBody873_24 rawBody873_67

def rawBody873_69 : StackLang.HolProg 64 :=
.seq rawBody873_5 rawBody873_68

def rawBody873_70 : StackLang.HolProg 64 :=
.seq rawBody873_2 rawBody873_69

def rawBody873_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody873_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody873_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody873_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody873_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody873_76 : StackLang.HolProg 64 :=
.seq rawBody873_74 rawBody873_75

def rawBody873_77 : StackLang.HolProg 64 :=
.seq rawBody873_73 rawBody873_76

def rawBody873_78 : StackLang.HolProg 64 :=
.seq rawBody873_72 rawBody873_77

def rawBody873_79 : StackLang.HolProg 64 :=
.seq rawBody873_71 rawBody873_78

def rawBody873_80 : StackLang.HolProg 64 :=
.seq rawBody873_70 rawBody873_79

def rawBody873_81 : StackLang.HolProg 64 :=
.seq rawBody873_1 rawBody873_80

def rawBody873_82 : StackLang.HolProg 64 :=
.seq rawBody873_0 rawBody873_81

def raw873 : StackLang.HolProg 64 := rawBody873_82
theorem raw873_eq : StackRawCall.compTop RawInfo.rawInfo (function873 (.list [])).1 = raw873 := by
  kernel_rfl
#print axioms raw873_eq
end InitECandidate.Proofs.BackendStages
