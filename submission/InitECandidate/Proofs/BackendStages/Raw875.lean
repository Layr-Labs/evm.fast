import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function875
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody875_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody875_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody875_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody875_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4601#64)

def rawBody875_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody875_5 : StackLang.HolProg 64 :=
.seq rawBody875_3 rawBody875_4

def rawBody875_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody875_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody875_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody875_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 875 3

def rawBody875_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody875_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody875_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody875_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody875_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody875_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody875_16 : StackLang.HolProg 64 :=
.seq rawBody875_14 rawBody875_15

def rawBody875_17 : StackLang.HolProg 64 :=
.seq rawBody875_13 rawBody875_16

def rawBody875_18 : StackLang.HolProg 64 :=
.seq rawBody875_12 rawBody875_17

def rawBody875_19 : StackLang.HolProg 64 :=
.seq rawBody875_11 rawBody875_18

def rawBody875_20 : StackLang.HolProg 64 :=
.seq rawBody875_10 rawBody875_19

def rawBody875_21 : StackLang.HolProg 64 :=
.seq rawBody875_9 rawBody875_20

def rawBody875_22 : StackLang.HolProg 64 :=
.seq rawBody875_8 rawBody875_21

def rawBody875_23 : StackLang.HolProg 64 :=
.seq rawBody875_7 rawBody875_22

def rawBody875_24 : StackLang.HolProg 64 :=
.seq rawBody875_6 rawBody875_23

def rawBody875_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody875_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody875_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody875_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody875_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody875_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody875_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody875_32 : StackLang.HolProg 64 :=
.seq rawBody875_30 rawBody875_31

def rawBody875_33 : StackLang.HolProg 64 :=
.seq rawBody875_29 rawBody875_32

def rawBody875_34 : StackLang.HolProg 64 :=
.seq rawBody875_28 rawBody875_33

def rawBody875_35 : StackLang.HolProg 64 :=
.seq rawBody875_27 rawBody875_34

def rawBody875_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody875_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody875_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody875_39 : StackLang.HolProg 64 :=
.seq rawBody875_37 rawBody875_38

def rawBody875_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody875_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def rawBody875_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody875_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def rawBody875_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def rawBody875_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 6#64)

def rawBody875_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody875_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody875_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def rawBody875_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody875_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody875_51 : StackLang.HolProg 64 :=
.seq rawBody875_49 rawBody875_50

def rawBody875_52 : StackLang.HolProg 64 :=
.seq rawBody875_48 rawBody875_51

def rawBody875_53 : StackLang.HolProg 64 :=
.seq rawBody875_47 rawBody875_52

def rawBody875_54 : StackLang.HolProg 64 :=
.seq rawBody875_46 rawBody875_53

def rawBody875_55 : StackLang.HolProg 64 :=
.seq rawBody875_45 rawBody875_54

def rawBody875_56 : StackLang.HolProg 64 :=
.seq rawBody875_44 rawBody875_55

def rawBody875_57 : StackLang.HolProg 64 :=
.seq rawBody875_43 rawBody875_56

def rawBody875_58 : StackLang.HolProg 64 :=
.seq rawBody875_42 rawBody875_57

def rawBody875_59 : StackLang.HolProg 64 :=
.seq rawBody875_41 rawBody875_58

def rawBody875_60 : StackLang.HolProg 64 :=
.seq rawBody875_40 rawBody875_59

def rawBody875_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64) rawBody875_39 rawBody875_60

def rawBody875_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody875_63 : StackLang.HolProg 64 :=
.seq rawBody875_61 rawBody875_62

def rawBody875_64 : StackLang.HolProg 64 :=
.seq rawBody875_36 rawBody875_63

def rawBody875_65 : StackLang.HolProg 64 :=
.call (some (rawBody875_35, 0, 875, 2)) (Sum.inl 874) (some (rawBody875_64, 875, 3))

def rawBody875_66 : StackLang.HolProg 64 :=
.seq rawBody875_26 rawBody875_65

def rawBody875_67 : StackLang.HolProg 64 :=
.seq rawBody875_25 rawBody875_66

def rawBody875_68 : StackLang.HolProg 64 :=
.seq rawBody875_24 rawBody875_67

def rawBody875_69 : StackLang.HolProg 64 :=
.seq rawBody875_5 rawBody875_68

def rawBody875_70 : StackLang.HolProg 64 :=
.seq rawBody875_2 rawBody875_69

def rawBody875_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody875_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody875_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody875_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody875_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody875_76 : StackLang.HolProg 64 :=
.seq rawBody875_74 rawBody875_75

def rawBody875_77 : StackLang.HolProg 64 :=
.seq rawBody875_73 rawBody875_76

def rawBody875_78 : StackLang.HolProg 64 :=
.seq rawBody875_72 rawBody875_77

def rawBody875_79 : StackLang.HolProg 64 :=
.seq rawBody875_71 rawBody875_78

def rawBody875_80 : StackLang.HolProg 64 :=
.seq rawBody875_70 rawBody875_79

def rawBody875_81 : StackLang.HolProg 64 :=
.seq rawBody875_1 rawBody875_80

def rawBody875_82 : StackLang.HolProg 64 :=
.seq rawBody875_0 rawBody875_81

def raw875 : StackLang.HolProg 64 := rawBody875_82
theorem raw875_eq : StackRawCall.compTop RawInfo.rawInfo (function875 (.list [])).1 = raw875 := by
  kernel_rfl
#print axioms raw875_eq
end InitECandidate.Proofs.BackendStages
