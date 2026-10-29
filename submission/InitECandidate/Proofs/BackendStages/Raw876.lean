import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function876
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody876_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody876_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody876_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody876_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4602#64)

def rawBody876_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody876_5 : StackLang.HolProg 64 :=
.seq rawBody876_3 rawBody876_4

def rawBody876_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody876_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody876_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody876_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 876 3

def rawBody876_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody876_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody876_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody876_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody876_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody876_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody876_16 : StackLang.HolProg 64 :=
.seq rawBody876_14 rawBody876_15

def rawBody876_17 : StackLang.HolProg 64 :=
.seq rawBody876_13 rawBody876_16

def rawBody876_18 : StackLang.HolProg 64 :=
.seq rawBody876_12 rawBody876_17

def rawBody876_19 : StackLang.HolProg 64 :=
.seq rawBody876_11 rawBody876_18

def rawBody876_20 : StackLang.HolProg 64 :=
.seq rawBody876_10 rawBody876_19

def rawBody876_21 : StackLang.HolProg 64 :=
.seq rawBody876_9 rawBody876_20

def rawBody876_22 : StackLang.HolProg 64 :=
.seq rawBody876_8 rawBody876_21

def rawBody876_23 : StackLang.HolProg 64 :=
.seq rawBody876_7 rawBody876_22

def rawBody876_24 : StackLang.HolProg 64 :=
.seq rawBody876_6 rawBody876_23

def rawBody876_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody876_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody876_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody876_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody876_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody876_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody876_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody876_32 : StackLang.HolProg 64 :=
.seq rawBody876_30 rawBody876_31

def rawBody876_33 : StackLang.HolProg 64 :=
.seq rawBody876_29 rawBody876_32

def rawBody876_34 : StackLang.HolProg 64 :=
.seq rawBody876_28 rawBody876_33

def rawBody876_35 : StackLang.HolProg 64 :=
.seq rawBody876_27 rawBody876_34

def rawBody876_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody876_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody876_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody876_39 : StackLang.HolProg 64 :=
.seq rawBody876_37 rawBody876_38

def rawBody876_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody876_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def rawBody876_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody876_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def rawBody876_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def rawBody876_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 7#64)

def rawBody876_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody876_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody876_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def rawBody876_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody876_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody876_51 : StackLang.HolProg 64 :=
.seq rawBody876_49 rawBody876_50

def rawBody876_52 : StackLang.HolProg 64 :=
.seq rawBody876_48 rawBody876_51

def rawBody876_53 : StackLang.HolProg 64 :=
.seq rawBody876_47 rawBody876_52

def rawBody876_54 : StackLang.HolProg 64 :=
.seq rawBody876_46 rawBody876_53

def rawBody876_55 : StackLang.HolProg 64 :=
.seq rawBody876_45 rawBody876_54

def rawBody876_56 : StackLang.HolProg 64 :=
.seq rawBody876_44 rawBody876_55

def rawBody876_57 : StackLang.HolProg 64 :=
.seq rawBody876_43 rawBody876_56

def rawBody876_58 : StackLang.HolProg 64 :=
.seq rawBody876_42 rawBody876_57

def rawBody876_59 : StackLang.HolProg 64 :=
.seq rawBody876_41 rawBody876_58

def rawBody876_60 : StackLang.HolProg 64 :=
.seq rawBody876_40 rawBody876_59

def rawBody876_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) rawBody876_39 rawBody876_60

def rawBody876_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody876_63 : StackLang.HolProg 64 :=
.seq rawBody876_61 rawBody876_62

def rawBody876_64 : StackLang.HolProg 64 :=
.seq rawBody876_36 rawBody876_63

def rawBody876_65 : StackLang.HolProg 64 :=
.call (some (rawBody876_35, 0, 876, 2)) (Sum.inl 875) (some (rawBody876_64, 876, 3))

def rawBody876_66 : StackLang.HolProg 64 :=
.seq rawBody876_26 rawBody876_65

def rawBody876_67 : StackLang.HolProg 64 :=
.seq rawBody876_25 rawBody876_66

def rawBody876_68 : StackLang.HolProg 64 :=
.seq rawBody876_24 rawBody876_67

def rawBody876_69 : StackLang.HolProg 64 :=
.seq rawBody876_5 rawBody876_68

def rawBody876_70 : StackLang.HolProg 64 :=
.seq rawBody876_2 rawBody876_69

def rawBody876_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody876_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody876_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody876_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody876_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody876_76 : StackLang.HolProg 64 :=
.seq rawBody876_74 rawBody876_75

def rawBody876_77 : StackLang.HolProg 64 :=
.seq rawBody876_73 rawBody876_76

def rawBody876_78 : StackLang.HolProg 64 :=
.seq rawBody876_72 rawBody876_77

def rawBody876_79 : StackLang.HolProg 64 :=
.seq rawBody876_71 rawBody876_78

def rawBody876_80 : StackLang.HolProg 64 :=
.seq rawBody876_70 rawBody876_79

def rawBody876_81 : StackLang.HolProg 64 :=
.seq rawBody876_1 rawBody876_80

def rawBody876_82 : StackLang.HolProg 64 :=
.seq rawBody876_0 rawBody876_81

def raw876 : StackLang.HolProg 64 := rawBody876_82
theorem raw876_eq : StackRawCall.compTop RawInfo.rawInfo (function876 (.list [])).1 = raw876 := by
  kernel_rfl
#print axioms raw876_eq
end InitECandidate.Proofs.BackendStages
