import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function709
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody709_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody709_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody709_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody709_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def rawBody709_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody709_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 7 0))

def rawBody709_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody709_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody709_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody709_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 7 0))

def rawBody709_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody709_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody709_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody709_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 7 0))

def rawBody709_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody709_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody709_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody709_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 7 0))

def rawBody709_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody709_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody709_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody709_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 5 5 7 0))

def rawBody709_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody709_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody709_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody709_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 6 6 7 0))

def rawBody709_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody709_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def rawBody709_28 : StackLang.HolProg 64 :=
.seq rawBody709_26 rawBody709_27

def rawBody709_29 : StackLang.HolProg 64 :=
.seq rawBody709_25 rawBody709_28

def rawBody709_30 : StackLang.HolProg 64 :=
.seq rawBody709_24 rawBody709_29

def rawBody709_31 : StackLang.HolProg 64 :=
.seq rawBody709_23 rawBody709_30

def rawBody709_32 : StackLang.HolProg 64 :=
.seq rawBody709_22 rawBody709_31

def rawBody709_33 : StackLang.HolProg 64 :=
.seq rawBody709_21 rawBody709_32

def rawBody709_34 : StackLang.HolProg 64 :=
.seq rawBody709_20 rawBody709_33

def rawBody709_35 : StackLang.HolProg 64 :=
.seq rawBody709_19 rawBody709_34

def rawBody709_36 : StackLang.HolProg 64 :=
.seq rawBody709_18 rawBody709_35

def rawBody709_37 : StackLang.HolProg 64 :=
.seq rawBody709_17 rawBody709_36

def rawBody709_38 : StackLang.HolProg 64 :=
.seq rawBody709_16 rawBody709_37

def rawBody709_39 : StackLang.HolProg 64 :=
.seq rawBody709_15 rawBody709_38

def rawBody709_40 : StackLang.HolProg 64 :=
.seq rawBody709_14 rawBody709_39

def rawBody709_41 : StackLang.HolProg 64 :=
.seq rawBody709_13 rawBody709_40

def rawBody709_42 : StackLang.HolProg 64 :=
.seq rawBody709_12 rawBody709_41

def rawBody709_43 : StackLang.HolProg 64 :=
.seq rawBody709_11 rawBody709_42

def rawBody709_44 : StackLang.HolProg 64 :=
.seq rawBody709_10 rawBody709_43

def rawBody709_45 : StackLang.HolProg 64 :=
.seq rawBody709_9 rawBody709_44

def rawBody709_46 : StackLang.HolProg 64 :=
.seq rawBody709_8 rawBody709_45

def rawBody709_47 : StackLang.HolProg 64 :=
.seq rawBody709_7 rawBody709_46

def rawBody709_48 : StackLang.HolProg 64 :=
.seq rawBody709_6 rawBody709_47

def rawBody709_49 : StackLang.HolProg 64 :=
.seq rawBody709_5 rawBody709_48

def rawBody709_50 : StackLang.HolProg 64 :=
.seq rawBody709_4 rawBody709_49

def rawBody709_51 : StackLang.HolProg 64 :=
.seq rawBody709_3 rawBody709_50

def rawBody709_52 : StackLang.HolProg 64 :=
.seq rawBody709_2 rawBody709_51

def rawBody709_53 : StackLang.HolProg 64 :=
.seq rawBody709_1 rawBody709_52

def rawBody709_54 : StackLang.HolProg 64 :=
.seq rawBody709_0 rawBody709_53

def raw709 : StackLang.HolProg 64 := rawBody709_54
theorem raw709_eq : StackRawCall.compTop RawInfo.rawInfo (function709 (.list [])).1 = raw709 := by
  kernel_rfl
#print axioms raw709_eq
end InitECandidate.Proofs.BackendStages
