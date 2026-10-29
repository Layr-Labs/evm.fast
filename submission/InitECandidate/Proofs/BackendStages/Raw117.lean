import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function117
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody117_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody117_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody117_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody117_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def rawBody117_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody117_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 5 0))

def rawBody117_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody117_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody117_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody117_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 5 0))

def rawBody117_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody117_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody117_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody117_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 5 0))

def rawBody117_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody117_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody117_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody117_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 5 0))

def rawBody117_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody117_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def rawBody117_20 : StackLang.HolProg 64 :=
.seq rawBody117_18 rawBody117_19

def rawBody117_21 : StackLang.HolProg 64 :=
.seq rawBody117_17 rawBody117_20

def rawBody117_22 : StackLang.HolProg 64 :=
.seq rawBody117_16 rawBody117_21

def rawBody117_23 : StackLang.HolProg 64 :=
.seq rawBody117_15 rawBody117_22

def rawBody117_24 : StackLang.HolProg 64 :=
.seq rawBody117_14 rawBody117_23

def rawBody117_25 : StackLang.HolProg 64 :=
.seq rawBody117_13 rawBody117_24

def rawBody117_26 : StackLang.HolProg 64 :=
.seq rawBody117_12 rawBody117_25

def rawBody117_27 : StackLang.HolProg 64 :=
.seq rawBody117_11 rawBody117_26

def rawBody117_28 : StackLang.HolProg 64 :=
.seq rawBody117_10 rawBody117_27

def rawBody117_29 : StackLang.HolProg 64 :=
.seq rawBody117_9 rawBody117_28

def rawBody117_30 : StackLang.HolProg 64 :=
.seq rawBody117_8 rawBody117_29

def rawBody117_31 : StackLang.HolProg 64 :=
.seq rawBody117_7 rawBody117_30

def rawBody117_32 : StackLang.HolProg 64 :=
.seq rawBody117_6 rawBody117_31

def rawBody117_33 : StackLang.HolProg 64 :=
.seq rawBody117_5 rawBody117_32

def rawBody117_34 : StackLang.HolProg 64 :=
.seq rawBody117_4 rawBody117_33

def rawBody117_35 : StackLang.HolProg 64 :=
.seq rawBody117_3 rawBody117_34

def rawBody117_36 : StackLang.HolProg 64 :=
.seq rawBody117_2 rawBody117_35

def rawBody117_37 : StackLang.HolProg 64 :=
.seq rawBody117_1 rawBody117_36

def rawBody117_38 : StackLang.HolProg 64 :=
.seq rawBody117_0 rawBody117_37

def raw117 : StackLang.HolProg 64 := rawBody117_38
theorem raw117_eq : StackRawCall.compTop RawInfo.rawInfo (function117 (.list [])).1 = raw117 := by
  kernel_rfl
#print axioms raw117_eq
end InitECandidate.Proofs.BackendStages
