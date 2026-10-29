import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function871
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody871_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody871_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody871_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody871_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4597#64)

def rawBody871_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody871_5 : StackLang.HolProg 64 :=
.seq rawBody871_3 rawBody871_4

def rawBody871_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody871_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody871_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody871_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 871 3

def rawBody871_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody871_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody871_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody871_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody871_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody871_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody871_16 : StackLang.HolProg 64 :=
.seq rawBody871_14 rawBody871_15

def rawBody871_17 : StackLang.HolProg 64 :=
.seq rawBody871_13 rawBody871_16

def rawBody871_18 : StackLang.HolProg 64 :=
.seq rawBody871_12 rawBody871_17

def rawBody871_19 : StackLang.HolProg 64 :=
.seq rawBody871_11 rawBody871_18

def rawBody871_20 : StackLang.HolProg 64 :=
.seq rawBody871_10 rawBody871_19

def rawBody871_21 : StackLang.HolProg 64 :=
.seq rawBody871_9 rawBody871_20

def rawBody871_22 : StackLang.HolProg 64 :=
.seq rawBody871_8 rawBody871_21

def rawBody871_23 : StackLang.HolProg 64 :=
.seq rawBody871_7 rawBody871_22

def rawBody871_24 : StackLang.HolProg 64 :=
.seq rawBody871_6 rawBody871_23

def rawBody871_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody871_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody871_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody871_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody871_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody871_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody871_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody871_32 : StackLang.HolProg 64 :=
.seq rawBody871_30 rawBody871_31

def rawBody871_33 : StackLang.HolProg 64 :=
.seq rawBody871_29 rawBody871_32

def rawBody871_34 : StackLang.HolProg 64 :=
.seq rawBody871_28 rawBody871_33

def rawBody871_35 : StackLang.HolProg 64 :=
.seq rawBody871_27 rawBody871_34

def rawBody871_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody871_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody871_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody871_39 : StackLang.HolProg 64 :=
.seq rawBody871_37 rawBody871_38

def rawBody871_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody871_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def rawBody871_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody871_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def rawBody871_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def rawBody871_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2#64)

def rawBody871_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody871_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody871_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def rawBody871_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody871_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody871_51 : StackLang.HolProg 64 :=
.seq rawBody871_49 rawBody871_50

def rawBody871_52 : StackLang.HolProg 64 :=
.seq rawBody871_48 rawBody871_51

def rawBody871_53 : StackLang.HolProg 64 :=
.seq rawBody871_47 rawBody871_52

def rawBody871_54 : StackLang.HolProg 64 :=
.seq rawBody871_46 rawBody871_53

def rawBody871_55 : StackLang.HolProg 64 :=
.seq rawBody871_45 rawBody871_54

def rawBody871_56 : StackLang.HolProg 64 :=
.seq rawBody871_44 rawBody871_55

def rawBody871_57 : StackLang.HolProg 64 :=
.seq rawBody871_43 rawBody871_56

def rawBody871_58 : StackLang.HolProg 64 :=
.seq rawBody871_42 rawBody871_57

def rawBody871_59 : StackLang.HolProg 64 :=
.seq rawBody871_41 rawBody871_58

def rawBody871_60 : StackLang.HolProg 64 :=
.seq rawBody871_40 rawBody871_59

def rawBody871_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64) rawBody871_39 rawBody871_60

def rawBody871_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody871_63 : StackLang.HolProg 64 :=
.seq rawBody871_61 rawBody871_62

def rawBody871_64 : StackLang.HolProg 64 :=
.seq rawBody871_36 rawBody871_63

def rawBody871_65 : StackLang.HolProg 64 :=
.call (some (rawBody871_35, 0, 871, 2)) (Sum.inl 870) (some (rawBody871_64, 871, 3))

def rawBody871_66 : StackLang.HolProg 64 :=
.seq rawBody871_26 rawBody871_65

def rawBody871_67 : StackLang.HolProg 64 :=
.seq rawBody871_25 rawBody871_66

def rawBody871_68 : StackLang.HolProg 64 :=
.seq rawBody871_24 rawBody871_67

def rawBody871_69 : StackLang.HolProg 64 :=
.seq rawBody871_5 rawBody871_68

def rawBody871_70 : StackLang.HolProg 64 :=
.seq rawBody871_2 rawBody871_69

def rawBody871_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody871_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody871_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody871_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody871_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody871_76 : StackLang.HolProg 64 :=
.seq rawBody871_74 rawBody871_75

def rawBody871_77 : StackLang.HolProg 64 :=
.seq rawBody871_73 rawBody871_76

def rawBody871_78 : StackLang.HolProg 64 :=
.seq rawBody871_72 rawBody871_77

def rawBody871_79 : StackLang.HolProg 64 :=
.seq rawBody871_71 rawBody871_78

def rawBody871_80 : StackLang.HolProg 64 :=
.seq rawBody871_70 rawBody871_79

def rawBody871_81 : StackLang.HolProg 64 :=
.seq rawBody871_1 rawBody871_80

def rawBody871_82 : StackLang.HolProg 64 :=
.seq rawBody871_0 rawBody871_81

def raw871 : StackLang.HolProg 64 := rawBody871_82
theorem raw871_eq : StackRawCall.compTop RawInfo.rawInfo (function871 (.list [])).1 = raw871 := by
  kernel_rfl
#print axioms raw871_eq
end InitECandidate.Proofs.BackendStages
