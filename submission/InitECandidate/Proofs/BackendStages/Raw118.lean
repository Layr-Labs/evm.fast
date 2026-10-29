import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function118
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody118_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody118_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody118_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody118_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody118_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody118_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def rawBody118_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody118_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 7 6 0))

def rawBody118_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody118_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody118_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody118_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody118_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody118_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 7 6 0))

def rawBody118_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody118_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody118_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody118_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody118_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody118_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 7 6 0))

def rawBody118_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody118_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody118_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody118_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody118_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody118_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 7 6 0))

def rawBody118_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody118_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody118_28 : StackLang.HolProg 64 :=
.seq rawBody118_26 rawBody118_27

def rawBody118_29 : StackLang.HolProg 64 :=
.seq rawBody118_25 rawBody118_28

def rawBody118_30 : StackLang.HolProg 64 :=
.seq rawBody118_24 rawBody118_29

def rawBody118_31 : StackLang.HolProg 64 :=
.seq rawBody118_23 rawBody118_30

def rawBody118_32 : StackLang.HolProg 64 :=
.seq rawBody118_22 rawBody118_31

def rawBody118_33 : StackLang.HolProg 64 :=
.seq rawBody118_21 rawBody118_32

def rawBody118_34 : StackLang.HolProg 64 :=
.seq rawBody118_20 rawBody118_33

def rawBody118_35 : StackLang.HolProg 64 :=
.seq rawBody118_19 rawBody118_34

def rawBody118_36 : StackLang.HolProg 64 :=
.seq rawBody118_18 rawBody118_35

def rawBody118_37 : StackLang.HolProg 64 :=
.seq rawBody118_17 rawBody118_36

def rawBody118_38 : StackLang.HolProg 64 :=
.seq rawBody118_16 rawBody118_37

def rawBody118_39 : StackLang.HolProg 64 :=
.seq rawBody118_15 rawBody118_38

def rawBody118_40 : StackLang.HolProg 64 :=
.seq rawBody118_14 rawBody118_39

def rawBody118_41 : StackLang.HolProg 64 :=
.seq rawBody118_13 rawBody118_40

def rawBody118_42 : StackLang.HolProg 64 :=
.seq rawBody118_12 rawBody118_41

def rawBody118_43 : StackLang.HolProg 64 :=
.seq rawBody118_11 rawBody118_42

def rawBody118_44 : StackLang.HolProg 64 :=
.seq rawBody118_10 rawBody118_43

def rawBody118_45 : StackLang.HolProg 64 :=
.seq rawBody118_9 rawBody118_44

def rawBody118_46 : StackLang.HolProg 64 :=
.seq rawBody118_8 rawBody118_45

def rawBody118_47 : StackLang.HolProg 64 :=
.seq rawBody118_7 rawBody118_46

def rawBody118_48 : StackLang.HolProg 64 :=
.seq rawBody118_6 rawBody118_47

def rawBody118_49 : StackLang.HolProg 64 :=
.seq rawBody118_5 rawBody118_48

def rawBody118_50 : StackLang.HolProg 64 :=
.seq rawBody118_4 rawBody118_49

def rawBody118_51 : StackLang.HolProg 64 :=
.seq rawBody118_3 rawBody118_50

def rawBody118_52 : StackLang.HolProg 64 :=
.seq rawBody118_2 rawBody118_51

def rawBody118_53 : StackLang.HolProg 64 :=
.seq rawBody118_1 rawBody118_52

def rawBody118_54 : StackLang.HolProg 64 :=
.seq rawBody118_0 rawBody118_53

def raw118 : StackLang.HolProg 64 := rawBody118_54
theorem raw118_eq : StackRawCall.compTop RawInfo.rawInfo (function118 (.list [])).1 = raw118 := by
  kernel_rfl
#print axioms raw118_eq
end InitECandidate.Proofs.BackendStages
