import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed718
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody718_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody718_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody718_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody718_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody718_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody718_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody718_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody718_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody718_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody718_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody718_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody718_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody718_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody718_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody718_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody718_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody718_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody718_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody718_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody718_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody718_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody718_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody718_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody718_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody718_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody718_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody718_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody718_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody718_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody718_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody718_30 : StackLang.HolProg 64 :=
.seq NamedBody718_28 NamedBody718_29

def NamedBody718_31 : StackLang.HolProg 64 :=
.seq NamedBody718_27 NamedBody718_30

def NamedBody718_32 : StackLang.HolProg 64 :=
.seq NamedBody718_26 NamedBody718_31

def NamedBody718_33 : StackLang.HolProg 64 :=
.seq NamedBody718_25 NamedBody718_32

def NamedBody718_34 : StackLang.HolProg 64 :=
.seq NamedBody718_24 NamedBody718_33

def NamedBody718_35 : StackLang.HolProg 64 :=
.seq NamedBody718_23 NamedBody718_34

def NamedBody718_36 : StackLang.HolProg 64 :=
.seq NamedBody718_22 NamedBody718_35

def NamedBody718_37 : StackLang.HolProg 64 :=
.seq NamedBody718_21 NamedBody718_36

def NamedBody718_38 : StackLang.HolProg 64 :=
.seq NamedBody718_20 NamedBody718_37

def NamedBody718_39 : StackLang.HolProg 64 :=
.seq NamedBody718_19 NamedBody718_38

def NamedBody718_40 : StackLang.HolProg 64 :=
.seq NamedBody718_18 NamedBody718_39

def NamedBody718_41 : StackLang.HolProg 64 :=
.seq NamedBody718_17 NamedBody718_40

def NamedBody718_42 : StackLang.HolProg 64 :=
.seq NamedBody718_16 NamedBody718_41

def NamedBody718_43 : StackLang.HolProg 64 :=
.seq NamedBody718_15 NamedBody718_42

def NamedBody718_44 : StackLang.HolProg 64 :=
.seq NamedBody718_14 NamedBody718_43

def NamedBody718_45 : StackLang.HolProg 64 :=
.seq NamedBody718_13 NamedBody718_44

def NamedBody718_46 : StackLang.HolProg 64 :=
.seq NamedBody718_12 NamedBody718_45

def NamedBody718_47 : StackLang.HolProg 64 :=
.seq NamedBody718_11 NamedBody718_46

def NamedBody718_48 : StackLang.HolProg 64 :=
.seq NamedBody718_10 NamedBody718_47

def NamedBody718_49 : StackLang.HolProg 64 :=
.seq NamedBody718_9 NamedBody718_48

def NamedBody718_50 : StackLang.HolProg 64 :=
.seq NamedBody718_8 NamedBody718_49

def NamedBody718_51 : StackLang.HolProg 64 :=
.seq NamedBody718_7 NamedBody718_50

def NamedBody718_52 : StackLang.HolProg 64 :=
.seq NamedBody718_6 NamedBody718_51

def NamedBody718_53 : StackLang.HolProg 64 :=
.seq NamedBody718_5 NamedBody718_52

def NamedBody718_54 : StackLang.HolProg 64 :=
.seq NamedBody718_4 NamedBody718_53

def NamedBody718_55 : StackLang.HolProg 64 :=
.seq NamedBody718_3 NamedBody718_54

def NamedBody718_56 : StackLang.HolProg 64 :=
.seq NamedBody718_2 NamedBody718_55

def NamedBody718_57 : StackLang.HolProg 64 :=
.seq NamedBody718_1 NamedBody718_56

def NamedBody718_58 : StackLang.HolProg 64 :=
.seq NamedBody718_0 NamedBody718_57

def Named718 : Nat × StackLang.HolProg 64 := (718, NamedBody718_58)
theorem Named718_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed718 = Named718 := by
  kernel_rfl
#print axioms Named718_eq
end InitECandidate.Proofs.BackendStages
