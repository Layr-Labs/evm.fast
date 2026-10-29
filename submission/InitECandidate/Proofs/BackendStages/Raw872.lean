import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function872
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody872_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody872_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody872_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody872_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4598#64)

def rawBody872_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody872_5 : StackLang.HolProg 64 :=
.seq rawBody872_3 rawBody872_4

def rawBody872_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody872_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody872_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody872_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 872 3

def rawBody872_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody872_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody872_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody872_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody872_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody872_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody872_16 : StackLang.HolProg 64 :=
.seq rawBody872_14 rawBody872_15

def rawBody872_17 : StackLang.HolProg 64 :=
.seq rawBody872_13 rawBody872_16

def rawBody872_18 : StackLang.HolProg 64 :=
.seq rawBody872_12 rawBody872_17

def rawBody872_19 : StackLang.HolProg 64 :=
.seq rawBody872_11 rawBody872_18

def rawBody872_20 : StackLang.HolProg 64 :=
.seq rawBody872_10 rawBody872_19

def rawBody872_21 : StackLang.HolProg 64 :=
.seq rawBody872_9 rawBody872_20

def rawBody872_22 : StackLang.HolProg 64 :=
.seq rawBody872_8 rawBody872_21

def rawBody872_23 : StackLang.HolProg 64 :=
.seq rawBody872_7 rawBody872_22

def rawBody872_24 : StackLang.HolProg 64 :=
.seq rawBody872_6 rawBody872_23

def rawBody872_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody872_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody872_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody872_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody872_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody872_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody872_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody872_32 : StackLang.HolProg 64 :=
.seq rawBody872_30 rawBody872_31

def rawBody872_33 : StackLang.HolProg 64 :=
.seq rawBody872_29 rawBody872_32

def rawBody872_34 : StackLang.HolProg 64 :=
.seq rawBody872_28 rawBody872_33

def rawBody872_35 : StackLang.HolProg 64 :=
.seq rawBody872_27 rawBody872_34

def rawBody872_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody872_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody872_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody872_39 : StackLang.HolProg 64 :=
.seq rawBody872_37 rawBody872_38

def rawBody872_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody872_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def rawBody872_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody872_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def rawBody872_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def rawBody872_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 3#64)

def rawBody872_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody872_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody872_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def rawBody872_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody872_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody872_51 : StackLang.HolProg 64 :=
.seq rawBody872_49 rawBody872_50

def rawBody872_52 : StackLang.HolProg 64 :=
.seq rawBody872_48 rawBody872_51

def rawBody872_53 : StackLang.HolProg 64 :=
.seq rawBody872_47 rawBody872_52

def rawBody872_54 : StackLang.HolProg 64 :=
.seq rawBody872_46 rawBody872_53

def rawBody872_55 : StackLang.HolProg 64 :=
.seq rawBody872_45 rawBody872_54

def rawBody872_56 : StackLang.HolProg 64 :=
.seq rawBody872_44 rawBody872_55

def rawBody872_57 : StackLang.HolProg 64 :=
.seq rawBody872_43 rawBody872_56

def rawBody872_58 : StackLang.HolProg 64 :=
.seq rawBody872_42 rawBody872_57

def rawBody872_59 : StackLang.HolProg 64 :=
.seq rawBody872_41 rawBody872_58

def rawBody872_60 : StackLang.HolProg 64 :=
.seq rawBody872_40 rawBody872_59

def rawBody872_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) rawBody872_39 rawBody872_60

def rawBody872_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody872_63 : StackLang.HolProg 64 :=
.seq rawBody872_61 rawBody872_62

def rawBody872_64 : StackLang.HolProg 64 :=
.seq rawBody872_36 rawBody872_63

def rawBody872_65 : StackLang.HolProg 64 :=
.call (some (rawBody872_35, 0, 872, 2)) (Sum.inl 871) (some (rawBody872_64, 872, 3))

def rawBody872_66 : StackLang.HolProg 64 :=
.seq rawBody872_26 rawBody872_65

def rawBody872_67 : StackLang.HolProg 64 :=
.seq rawBody872_25 rawBody872_66

def rawBody872_68 : StackLang.HolProg 64 :=
.seq rawBody872_24 rawBody872_67

def rawBody872_69 : StackLang.HolProg 64 :=
.seq rawBody872_5 rawBody872_68

def rawBody872_70 : StackLang.HolProg 64 :=
.seq rawBody872_2 rawBody872_69

def rawBody872_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody872_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody872_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody872_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody872_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody872_76 : StackLang.HolProg 64 :=
.seq rawBody872_74 rawBody872_75

def rawBody872_77 : StackLang.HolProg 64 :=
.seq rawBody872_73 rawBody872_76

def rawBody872_78 : StackLang.HolProg 64 :=
.seq rawBody872_72 rawBody872_77

def rawBody872_79 : StackLang.HolProg 64 :=
.seq rawBody872_71 rawBody872_78

def rawBody872_80 : StackLang.HolProg 64 :=
.seq rawBody872_70 rawBody872_79

def rawBody872_81 : StackLang.HolProg 64 :=
.seq rawBody872_1 rawBody872_80

def rawBody872_82 : StackLang.HolProg 64 :=
.seq rawBody872_0 rawBody872_81

def raw872 : StackLang.HolProg 64 := rawBody872_82
theorem raw872_eq : StackRawCall.compTop RawInfo.rawInfo (function872 (.list [])).1 = raw872 := by
  kernel_rfl
#print axioms raw872_eq
end InitECandidate.Proofs.BackendStages
