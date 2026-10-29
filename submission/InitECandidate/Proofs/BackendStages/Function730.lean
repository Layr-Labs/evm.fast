import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data730
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody730_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def stackBody730_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody730_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 96#64)

def stackBody730_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def stackBody730_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody730_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3262#64)

def stackBody730_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def stackBody730_7 : StackLang.HolProg 64 :=
.seq stackBody730_5 stackBody730_6

def stackBody730_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def stackBody730_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def stackBody730_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def stackBody730_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 730 3

def stackBody730_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def stackBody730_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def stackBody730_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def stackBody730_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody730_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def stackBody730_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def stackBody730_18 : StackLang.HolProg 64 :=
.seq stackBody730_16 stackBody730_17

def stackBody730_19 : StackLang.HolProg 64 :=
.seq stackBody730_15 stackBody730_18

def stackBody730_20 : StackLang.HolProg 64 :=
.seq stackBody730_14 stackBody730_19

def stackBody730_21 : StackLang.HolProg 64 :=
.seq stackBody730_13 stackBody730_20

def stackBody730_22 : StackLang.HolProg 64 :=
.seq stackBody730_12 stackBody730_21

def stackBody730_23 : StackLang.HolProg 64 :=
.seq stackBody730_11 stackBody730_22

def stackBody730_24 : StackLang.HolProg 64 :=
.seq stackBody730_10 stackBody730_23

def stackBody730_25 : StackLang.HolProg 64 :=
.seq stackBody730_9 stackBody730_24

def stackBody730_26 : StackLang.HolProg 64 :=
.seq stackBody730_8 stackBody730_25

def stackBody730_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody730_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody730_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody730_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def stackBody730_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def stackBody730_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def stackBody730_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def stackBody730_34 : StackLang.HolProg 64 :=
.seq stackBody730_32 stackBody730_33

def stackBody730_35 : StackLang.HolProg 64 :=
.seq stackBody730_31 stackBody730_34

def stackBody730_36 : StackLang.HolProg 64 :=
.seq stackBody730_30 stackBody730_35

def stackBody730_37 : StackLang.HolProg 64 :=
.seq stackBody730_29 stackBody730_36

def stackBody730_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def stackBody730_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def stackBody730_40 : StackLang.HolProg 64 :=
.seq stackBody730_38 stackBody730_39

def stackBody730_41 : StackLang.HolProg 64 :=
.call (some (stackBody730_37, 0, 730, 2)) (Sum.inl 78) (some (stackBody730_40, 730, 3))

def stackBody730_42 : StackLang.HolProg 64 :=
.seq stackBody730_28 stackBody730_41

def stackBody730_43 : StackLang.HolProg 64 :=
.seq stackBody730_27 stackBody730_42

def stackBody730_44 : StackLang.HolProg 64 :=
.seq stackBody730_26 stackBody730_43

def stackBody730_45 : StackLang.HolProg 64 :=
.seq stackBody730_7 stackBody730_44

def stackBody730_46 : StackLang.HolProg 64 :=
.seq stackBody730_4 stackBody730_45

def stackBody730_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody730_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def stackBody730_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody730_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def stackBody730_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody730_52 : StackLang.HolProg 64 :=
.seq stackBody730_50 stackBody730_51

def stackBody730_53 : StackLang.HolProg 64 :=
.seq stackBody730_49 stackBody730_52

def stackBody730_54 : StackLang.HolProg 64 :=
.seq stackBody730_48 stackBody730_53

def stackBody730_55 : StackLang.HolProg 64 :=
.seq stackBody730_47 stackBody730_54

def stackBody730_56 : StackLang.HolProg 64 :=
.seq stackBody730_46 stackBody730_55

def stackBody730_57 : StackLang.HolProg 64 :=
.seq stackBody730_3 stackBody730_56

def stackBody730_58 : StackLang.HolProg 64 :=
.seq stackBody730_2 stackBody730_57

def stackBody730_59 : StackLang.HolProg 64 :=
.seq stackBody730_1 stackBody730_58

def stackBody730_60 : StackLang.HolProg 64 :=
.seq stackBody730_0 stackBody730_59

def function730 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody730_60, 2, Flapjack.AppList.append bitmapPrefix (Flapjack.AppList.list [2#64]), 3262)
theorem function730_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized730.2.2 InitECandidate.Proofs.StackAnalysis.optimized730.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 3261) = function730 bitmapPrefix := by
  kernel_rfl
#print axioms function730_eq
end InitECandidate.Proofs.BackendStages
