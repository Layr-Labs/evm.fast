import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed84
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody84_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody84_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody84_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody84_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 71777214294589695#64)

def NamedBody84_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody84_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody84_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 71777214294589695#64)

def NamedBody84_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody84_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody84_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody84_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody84_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody84_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 281470681808895#64)

def NamedBody84_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody84_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody84_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 281470681808895#64)

def NamedBody84_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody84_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody84_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody84_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody84_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody84_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody84_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody84_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody84_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody84_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody84_26 : StackLang.HolProg 64 :=
.seq NamedBody84_24 NamedBody84_25

def NamedBody84_27 : StackLang.HolProg 64 :=
.seq NamedBody84_23 NamedBody84_26

def NamedBody84_28 : StackLang.HolProg 64 :=
.seq NamedBody84_22 NamedBody84_27

def NamedBody84_29 : StackLang.HolProg 64 :=
.seq NamedBody84_21 NamedBody84_28

def NamedBody84_30 : StackLang.HolProg 64 :=
.seq NamedBody84_20 NamedBody84_29

def NamedBody84_31 : StackLang.HolProg 64 :=
.seq NamedBody84_19 NamedBody84_30

def NamedBody84_32 : StackLang.HolProg 64 :=
.seq NamedBody84_18 NamedBody84_31

def NamedBody84_33 : StackLang.HolProg 64 :=
.seq NamedBody84_17 NamedBody84_32

def NamedBody84_34 : StackLang.HolProg 64 :=
.seq NamedBody84_16 NamedBody84_33

def NamedBody84_35 : StackLang.HolProg 64 :=
.seq NamedBody84_15 NamedBody84_34

def NamedBody84_36 : StackLang.HolProg 64 :=
.seq NamedBody84_14 NamedBody84_35

def NamedBody84_37 : StackLang.HolProg 64 :=
.seq NamedBody84_13 NamedBody84_36

def NamedBody84_38 : StackLang.HolProg 64 :=
.seq NamedBody84_12 NamedBody84_37

def NamedBody84_39 : StackLang.HolProg 64 :=
.seq NamedBody84_11 NamedBody84_38

def NamedBody84_40 : StackLang.HolProg 64 :=
.seq NamedBody84_10 NamedBody84_39

def NamedBody84_41 : StackLang.HolProg 64 :=
.seq NamedBody84_9 NamedBody84_40

def NamedBody84_42 : StackLang.HolProg 64 :=
.seq NamedBody84_8 NamedBody84_41

def NamedBody84_43 : StackLang.HolProg 64 :=
.seq NamedBody84_7 NamedBody84_42

def NamedBody84_44 : StackLang.HolProg 64 :=
.seq NamedBody84_6 NamedBody84_43

def NamedBody84_45 : StackLang.HolProg 64 :=
.seq NamedBody84_5 NamedBody84_44

def NamedBody84_46 : StackLang.HolProg 64 :=
.seq NamedBody84_4 NamedBody84_45

def NamedBody84_47 : StackLang.HolProg 64 :=
.seq NamedBody84_3 NamedBody84_46

def NamedBody84_48 : StackLang.HolProg 64 :=
.seq NamedBody84_2 NamedBody84_47

def NamedBody84_49 : StackLang.HolProg 64 :=
.seq NamedBody84_1 NamedBody84_48

def NamedBody84_50 : StackLang.HolProg 64 :=
.seq NamedBody84_0 NamedBody84_49

def Named84 : Nat × StackLang.HolProg 64 := (84, NamedBody84_50)
theorem Named84_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed84 = Named84 := by
  kernel_rfl
#print axioms Named84_eq
end InitECandidate.Proofs.BackendStages
