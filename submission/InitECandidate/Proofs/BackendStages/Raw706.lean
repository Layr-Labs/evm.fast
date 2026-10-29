import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function706
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody706_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody706_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody706_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody706_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody706_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody706_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody706_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody706_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody706_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody706_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody706_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody706_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody706_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody706_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody706_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody706_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody706_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody706_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody706_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody706_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody706_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody706_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody706_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody706_23 : StackLang.HolProg 64 :=
.seq rawBody706_21 rawBody706_22

def rawBody706_24 : StackLang.HolProg 64 :=
.seq rawBody706_20 rawBody706_23

def rawBody706_25 : StackLang.HolProg 64 :=
.seq rawBody706_19 rawBody706_24

def rawBody706_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody706_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody706_25 rawBody706_26

def rawBody706_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody706_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody706_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody706_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody706_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody706_33 : StackLang.HolProg 64 :=
.seq rawBody706_31 rawBody706_32

def rawBody706_34 : StackLang.HolProg 64 :=
.seq rawBody706_30 rawBody706_33

def rawBody706_35 : StackLang.HolProg 64 :=
.seq rawBody706_29 rawBody706_34

def rawBody706_36 : StackLang.HolProg 64 :=
.seq rawBody706_28 rawBody706_35

def rawBody706_37 : StackLang.HolProg 64 :=
.seq rawBody706_27 rawBody706_36

def rawBody706_38 : StackLang.HolProg 64 :=
.seq rawBody706_18 rawBody706_37

def rawBody706_39 : StackLang.HolProg 64 :=
.seq rawBody706_17 rawBody706_38

def rawBody706_40 : StackLang.HolProg 64 :=
.seq rawBody706_16 rawBody706_39

def rawBody706_41 : StackLang.HolProg 64 :=
.seq rawBody706_15 rawBody706_40

def rawBody706_42 : StackLang.HolProg 64 :=
.seq rawBody706_14 rawBody706_41

def rawBody706_43 : StackLang.HolProg 64 :=
.seq rawBody706_13 rawBody706_42

def rawBody706_44 : StackLang.HolProg 64 :=
.seq rawBody706_12 rawBody706_43

def rawBody706_45 : StackLang.HolProg 64 :=
.seq rawBody706_11 rawBody706_44

def rawBody706_46 : StackLang.HolProg 64 :=
.seq rawBody706_10 rawBody706_45

def rawBody706_47 : StackLang.HolProg 64 :=
.seq rawBody706_9 rawBody706_46

def rawBody706_48 : StackLang.HolProg 64 :=
.seq rawBody706_8 rawBody706_47

def rawBody706_49 : StackLang.HolProg 64 :=
.seq rawBody706_7 rawBody706_48

def rawBody706_50 : StackLang.HolProg 64 :=
.seq rawBody706_6 rawBody706_49

def rawBody706_51 : StackLang.HolProg 64 :=
.seq rawBody706_5 rawBody706_50

def rawBody706_52 : StackLang.HolProg 64 :=
.seq rawBody706_4 rawBody706_51

def rawBody706_53 : StackLang.HolProg 64 :=
.seq rawBody706_3 rawBody706_52

def rawBody706_54 : StackLang.HolProg 64 :=
.seq rawBody706_2 rawBody706_53

def rawBody706_55 : StackLang.HolProg 64 :=
.seq rawBody706_1 rawBody706_54

def rawBody706_56 : StackLang.HolProg 64 :=
.seq rawBody706_0 rawBody706_55

def raw706 : StackLang.HolProg 64 := rawBody706_56
theorem raw706_eq : StackRawCall.compTop RawInfo.rawInfo (function706 (.list [])).1 = raw706 := by
  kernel_rfl
#print axioms raw706_eq
end InitECandidate.Proofs.BackendStages
