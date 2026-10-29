import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data706
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody706_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody706_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody706_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def stackBody706_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody706_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def stackBody706_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def stackBody706_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody706_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def stackBody706_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def stackBody706_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody706_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def stackBody706_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def stackBody706_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody706_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def stackBody706_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def stackBody706_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody706_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def stackBody706_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def stackBody706_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def stackBody706_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody706_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def stackBody706_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody706_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody706_23 : StackLang.HolProg 64 :=
.seq stackBody706_21 stackBody706_22

def stackBody706_24 : StackLang.HolProg 64 :=
.seq stackBody706_20 stackBody706_23

def stackBody706_25 : StackLang.HolProg 64 :=
.seq stackBody706_19 stackBody706_24

def stackBody706_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody706_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) stackBody706_25 stackBody706_26

def stackBody706_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody706_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody706_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def stackBody706_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody706_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody706_33 : StackLang.HolProg 64 :=
.seq stackBody706_31 stackBody706_32

def stackBody706_34 : StackLang.HolProg 64 :=
.seq stackBody706_30 stackBody706_33

def stackBody706_35 : StackLang.HolProg 64 :=
.seq stackBody706_29 stackBody706_34

def stackBody706_36 : StackLang.HolProg 64 :=
.seq stackBody706_28 stackBody706_35

def stackBody706_37 : StackLang.HolProg 64 :=
.seq stackBody706_27 stackBody706_36

def stackBody706_38 : StackLang.HolProg 64 :=
.seq stackBody706_18 stackBody706_37

def stackBody706_39 : StackLang.HolProg 64 :=
.seq stackBody706_17 stackBody706_38

def stackBody706_40 : StackLang.HolProg 64 :=
.seq stackBody706_16 stackBody706_39

def stackBody706_41 : StackLang.HolProg 64 :=
.seq stackBody706_15 stackBody706_40

def stackBody706_42 : StackLang.HolProg 64 :=
.seq stackBody706_14 stackBody706_41

def stackBody706_43 : StackLang.HolProg 64 :=
.seq stackBody706_13 stackBody706_42

def stackBody706_44 : StackLang.HolProg 64 :=
.seq stackBody706_12 stackBody706_43

def stackBody706_45 : StackLang.HolProg 64 :=
.seq stackBody706_11 stackBody706_44

def stackBody706_46 : StackLang.HolProg 64 :=
.seq stackBody706_10 stackBody706_45

def stackBody706_47 : StackLang.HolProg 64 :=
.seq stackBody706_9 stackBody706_46

def stackBody706_48 : StackLang.HolProg 64 :=
.seq stackBody706_8 stackBody706_47

def stackBody706_49 : StackLang.HolProg 64 :=
.seq stackBody706_7 stackBody706_48

def stackBody706_50 : StackLang.HolProg 64 :=
.seq stackBody706_6 stackBody706_49

def stackBody706_51 : StackLang.HolProg 64 :=
.seq stackBody706_5 stackBody706_50

def stackBody706_52 : StackLang.HolProg 64 :=
.seq stackBody706_4 stackBody706_51

def stackBody706_53 : StackLang.HolProg 64 :=
.seq stackBody706_3 stackBody706_52

def stackBody706_54 : StackLang.HolProg 64 :=
.seq stackBody706_2 stackBody706_53

def stackBody706_55 : StackLang.HolProg 64 :=
.seq stackBody706_1 stackBody706_54

def stackBody706_56 : StackLang.HolProg 64 :=
.seq stackBody706_0 stackBody706_55

def function706 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody706_56, 0, bitmapPrefix, 3151)
theorem function706_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized706.2.2 InitECandidate.Proofs.StackAnalysis.optimized706.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 3151) = function706 bitmapPrefix := by
  kernel_rfl
#print axioms function706_eq
end InitECandidate.Proofs.BackendStages
