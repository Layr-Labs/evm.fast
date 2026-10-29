import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed83
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody83_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody83_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody83_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody83_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody83_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody83_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody83_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody83_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody83_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody83_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody83_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody83_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody83_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody83_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody83_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody83_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody83_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody83_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody83_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody83_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody83_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody83_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody83_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody83_23 : StackLang.HolProg 64 :=
.seq NamedBody83_21 NamedBody83_22

def NamedBody83_24 : StackLang.HolProg 64 :=
.seq NamedBody83_20 NamedBody83_23

def NamedBody83_25 : StackLang.HolProg 64 :=
.seq NamedBody83_19 NamedBody83_24

def NamedBody83_26 : StackLang.HolProg 64 :=
.seq NamedBody83_18 NamedBody83_25

def NamedBody83_27 : StackLang.HolProg 64 :=
.seq NamedBody83_17 NamedBody83_26

def NamedBody83_28 : StackLang.HolProg 64 :=
.seq NamedBody83_16 NamedBody83_27

def NamedBody83_29 : StackLang.HolProg 64 :=
.seq NamedBody83_15 NamedBody83_28

def NamedBody83_30 : StackLang.HolProg 64 :=
.seq NamedBody83_14 NamedBody83_29

def NamedBody83_31 : StackLang.HolProg 64 :=
.seq NamedBody83_13 NamedBody83_30

def NamedBody83_32 : StackLang.HolProg 64 :=
.seq NamedBody83_12 NamedBody83_31

def NamedBody83_33 : StackLang.HolProg 64 :=
.seq NamedBody83_11 NamedBody83_32

def NamedBody83_34 : StackLang.HolProg 64 :=
.seq NamedBody83_10 NamedBody83_33

def NamedBody83_35 : StackLang.HolProg 64 :=
.seq NamedBody83_9 NamedBody83_34

def NamedBody83_36 : StackLang.HolProg 64 :=
.seq NamedBody83_8 NamedBody83_35

def NamedBody83_37 : StackLang.HolProg 64 :=
.seq NamedBody83_7 NamedBody83_36

def NamedBody83_38 : StackLang.HolProg 64 :=
.seq NamedBody83_6 NamedBody83_37

def NamedBody83_39 : StackLang.HolProg 64 :=
.seq NamedBody83_5 NamedBody83_38

def NamedBody83_40 : StackLang.HolProg 64 :=
.seq NamedBody83_4 NamedBody83_39

def NamedBody83_41 : StackLang.HolProg 64 :=
.seq NamedBody83_3 NamedBody83_40

def NamedBody83_42 : StackLang.HolProg 64 :=
.seq NamedBody83_2 NamedBody83_41

def NamedBody83_43 : StackLang.HolProg 64 :=
.seq NamedBody83_1 NamedBody83_42

def NamedBody83_44 : StackLang.HolProg 64 :=
.seq NamedBody83_0 NamedBody83_43

def Named83 : Nat × StackLang.HolProg 64 := (83, NamedBody83_44)
theorem Named83_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed83 = Named83 := by
  kernel_rfl
#print axioms Named83_eq
end InitECandidate.Proofs.BackendStages
