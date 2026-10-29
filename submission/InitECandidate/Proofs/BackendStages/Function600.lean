import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data600
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody600_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def stackBody600_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody600_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def stackBody600_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def stackBody600_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def stackBody600_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def stackBody600_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 160#64))

def stackBody600_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def stackBody600_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody600_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody600_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def stackBody600_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def stackBody600_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def stackBody600_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody600_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2275#64)

def stackBody600_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def stackBody600_16 : StackLang.HolProg 64 :=
.seq stackBody600_14 stackBody600_15

def stackBody600_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def stackBody600_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def stackBody600_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def stackBody600_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 600 3

def stackBody600_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def stackBody600_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def stackBody600_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def stackBody600_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody600_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def stackBody600_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def stackBody600_27 : StackLang.HolProg 64 :=
.seq stackBody600_25 stackBody600_26

def stackBody600_28 : StackLang.HolProg 64 :=
.seq stackBody600_24 stackBody600_27

def stackBody600_29 : StackLang.HolProg 64 :=
.seq stackBody600_23 stackBody600_28

def stackBody600_30 : StackLang.HolProg 64 :=
.seq stackBody600_22 stackBody600_29

def stackBody600_31 : StackLang.HolProg 64 :=
.seq stackBody600_21 stackBody600_30

def stackBody600_32 : StackLang.HolProg 64 :=
.seq stackBody600_20 stackBody600_31

def stackBody600_33 : StackLang.HolProg 64 :=
.seq stackBody600_19 stackBody600_32

def stackBody600_34 : StackLang.HolProg 64 :=
.seq stackBody600_18 stackBody600_33

def stackBody600_35 : StackLang.HolProg 64 :=
.seq stackBody600_17 stackBody600_34

def stackBody600_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody600_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody600_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody600_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def stackBody600_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def stackBody600_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def stackBody600_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def stackBody600_43 : StackLang.HolProg 64 :=
.seq stackBody600_41 stackBody600_42

def stackBody600_44 : StackLang.HolProg 64 :=
.seq stackBody600_40 stackBody600_43

def stackBody600_45 : StackLang.HolProg 64 :=
.seq stackBody600_39 stackBody600_44

def stackBody600_46 : StackLang.HolProg 64 :=
.seq stackBody600_38 stackBody600_45

def stackBody600_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def stackBody600_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def stackBody600_49 : StackLang.HolProg 64 :=
.seq stackBody600_47 stackBody600_48

def stackBody600_50 : StackLang.HolProg 64 :=
.call (some (stackBody600_46, 0, 600, 2)) (Sum.inl 391) (some (stackBody600_49, 600, 3))

def stackBody600_51 : StackLang.HolProg 64 :=
.seq stackBody600_37 stackBody600_50

def stackBody600_52 : StackLang.HolProg 64 :=
.seq stackBody600_36 stackBody600_51

def stackBody600_53 : StackLang.HolProg 64 :=
.seq stackBody600_35 stackBody600_52

def stackBody600_54 : StackLang.HolProg 64 :=
.seq stackBody600_16 stackBody600_53

def stackBody600_55 : StackLang.HolProg 64 :=
.seq stackBody600_13 stackBody600_54

def stackBody600_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody600_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody600_58 : StackLang.HolProg 64 :=
.seq stackBody600_56 stackBody600_57

def stackBody600_59 : StackLang.HolProg 64 :=
.seq stackBody600_55 stackBody600_58

def stackBody600_60 : StackLang.HolProg 64 :=
.seq stackBody600_12 stackBody600_59

def stackBody600_61 : StackLang.HolProg 64 :=
.seq stackBody600_11 stackBody600_60

def stackBody600_62 : StackLang.HolProg 64 :=
.seq stackBody600_10 stackBody600_61

def stackBody600_63 : StackLang.HolProg 64 :=
.seq stackBody600_9 stackBody600_62

def stackBody600_64 : StackLang.HolProg 64 :=
.seq stackBody600_8 stackBody600_63

def stackBody600_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody600_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody600_67 : StackLang.HolProg 64 :=
.seq stackBody600_65 stackBody600_66

def stackBody600_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) stackBody600_64 stackBody600_67

def stackBody600_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody600_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def stackBody600_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody600_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def stackBody600_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody600_74 : StackLang.HolProg 64 :=
.seq stackBody600_72 stackBody600_73

def stackBody600_75 : StackLang.HolProg 64 :=
.seq stackBody600_71 stackBody600_74

def stackBody600_76 : StackLang.HolProg 64 :=
.seq stackBody600_70 stackBody600_75

def stackBody600_77 : StackLang.HolProg 64 :=
.seq stackBody600_69 stackBody600_76

def stackBody600_78 : StackLang.HolProg 64 :=
.seq stackBody600_68 stackBody600_77

def stackBody600_79 : StackLang.HolProg 64 :=
.seq stackBody600_7 stackBody600_78

def stackBody600_80 : StackLang.HolProg 64 :=
.seq stackBody600_6 stackBody600_79

def stackBody600_81 : StackLang.HolProg 64 :=
.seq stackBody600_5 stackBody600_80

def stackBody600_82 : StackLang.HolProg 64 :=
.seq stackBody600_4 stackBody600_81

def stackBody600_83 : StackLang.HolProg 64 :=
.seq stackBody600_3 stackBody600_82

def stackBody600_84 : StackLang.HolProg 64 :=
.seq stackBody600_2 stackBody600_83

def stackBody600_85 : StackLang.HolProg 64 :=
.seq stackBody600_1 stackBody600_84

def stackBody600_86 : StackLang.HolProg 64 :=
.seq stackBody600_0 stackBody600_85

def function600 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody600_86, 2, Flapjack.AppList.append bitmapPrefix (Flapjack.AppList.list [2#64]), 2275)
theorem function600_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized600.2.2 InitECandidate.Proofs.StackAnalysis.optimized600.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 2274) = function600 bitmapPrefix := by
  kernel_rfl
#print axioms function600_eq
end InitECandidate.Proofs.BackendStages
