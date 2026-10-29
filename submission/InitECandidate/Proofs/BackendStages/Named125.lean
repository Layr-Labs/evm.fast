import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed125
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody125_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody125_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody125_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody125_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody125_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody125_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody125_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody125_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody125_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody125_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody125_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody125_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody125_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody125_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody125_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 40#64))

def NamedBody125_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody125_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody125_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 32#64))

def NamedBody125_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody125_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody125_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 56#64))

def NamedBody125_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody125_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody125_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 48#64))

def NamedBody125_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody125_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody125_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody125_27 : StackLang.HolProg 64 :=
.seq NamedBody125_25 NamedBody125_26

def NamedBody125_28 : StackLang.HolProg 64 :=
.seq NamedBody125_24 NamedBody125_27

def NamedBody125_29 : StackLang.HolProg 64 :=
.seq NamedBody125_23 NamedBody125_28

def NamedBody125_30 : StackLang.HolProg 64 :=
.seq NamedBody125_22 NamedBody125_29

def NamedBody125_31 : StackLang.HolProg 64 :=
.seq NamedBody125_21 NamedBody125_30

def NamedBody125_32 : StackLang.HolProg 64 :=
.seq NamedBody125_20 NamedBody125_31

def NamedBody125_33 : StackLang.HolProg 64 :=
.seq NamedBody125_19 NamedBody125_32

def NamedBody125_34 : StackLang.HolProg 64 :=
.seq NamedBody125_18 NamedBody125_33

def NamedBody125_35 : StackLang.HolProg 64 :=
.seq NamedBody125_17 NamedBody125_34

def NamedBody125_36 : StackLang.HolProg 64 :=
.seq NamedBody125_16 NamedBody125_35

def NamedBody125_37 : StackLang.HolProg 64 :=
.seq NamedBody125_15 NamedBody125_36

def NamedBody125_38 : StackLang.HolProg 64 :=
.seq NamedBody125_14 NamedBody125_37

def NamedBody125_39 : StackLang.HolProg 64 :=
.seq NamedBody125_13 NamedBody125_38

def NamedBody125_40 : StackLang.HolProg 64 :=
.seq NamedBody125_12 NamedBody125_39

def NamedBody125_41 : StackLang.HolProg 64 :=
.seq NamedBody125_11 NamedBody125_40

def NamedBody125_42 : StackLang.HolProg 64 :=
.seq NamedBody125_10 NamedBody125_41

def NamedBody125_43 : StackLang.HolProg 64 :=
.seq NamedBody125_9 NamedBody125_42

def NamedBody125_44 : StackLang.HolProg 64 :=
.seq NamedBody125_8 NamedBody125_43

def NamedBody125_45 : StackLang.HolProg 64 :=
.seq NamedBody125_7 NamedBody125_44

def NamedBody125_46 : StackLang.HolProg 64 :=
.seq NamedBody125_6 NamedBody125_45

def NamedBody125_47 : StackLang.HolProg 64 :=
.seq NamedBody125_5 NamedBody125_46

def NamedBody125_48 : StackLang.HolProg 64 :=
.seq NamedBody125_4 NamedBody125_47

def NamedBody125_49 : StackLang.HolProg 64 :=
.seq NamedBody125_3 NamedBody125_48

def NamedBody125_50 : StackLang.HolProg 64 :=
.seq NamedBody125_2 NamedBody125_49

def NamedBody125_51 : StackLang.HolProg 64 :=
.seq NamedBody125_1 NamedBody125_50

def NamedBody125_52 : StackLang.HolProg 64 :=
.seq NamedBody125_0 NamedBody125_51

def Named125 : Nat × StackLang.HolProg 64 := (125, NamedBody125_52)
theorem Named125_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed125 = Named125 := by
  kernel_rfl
#print axioms Named125_eq
end InitECandidate.Proofs.BackendStages
