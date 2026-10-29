import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed604
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody604_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody604_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody604_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody604_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody604_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody604_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551360#64))

def NamedBody604_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def NamedBody604_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody604_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 64#64))

def NamedBody604_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody604_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 184#64))

def NamedBody604_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody604_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody604_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody604_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody604_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551360#64))

def NamedBody604_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody604_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody604_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody604_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody604_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody604_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551360#64))

def NamedBody604_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def NamedBody604_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody604_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody604_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody604_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody604_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody604_28 : StackLang.HolProg 64 :=
.seq NamedBody604_26 NamedBody604_27

def NamedBody604_29 : StackLang.HolProg 64 :=
.seq NamedBody604_25 NamedBody604_28

def NamedBody604_30 : StackLang.HolProg 64 :=
.seq NamedBody604_24 NamedBody604_29

def NamedBody604_31 : StackLang.HolProg 64 :=
.seq NamedBody604_23 NamedBody604_30

def NamedBody604_32 : StackLang.HolProg 64 :=
.seq NamedBody604_22 NamedBody604_31

def NamedBody604_33 : StackLang.HolProg 64 :=
.seq NamedBody604_21 NamedBody604_32

def NamedBody604_34 : StackLang.HolProg 64 :=
.seq NamedBody604_20 NamedBody604_33

def NamedBody604_35 : StackLang.HolProg 64 :=
.seq NamedBody604_19 NamedBody604_34

def NamedBody604_36 : StackLang.HolProg 64 :=
.seq NamedBody604_18 NamedBody604_35

def NamedBody604_37 : StackLang.HolProg 64 :=
.seq NamedBody604_17 NamedBody604_36

def NamedBody604_38 : StackLang.HolProg 64 :=
.seq NamedBody604_16 NamedBody604_37

def NamedBody604_39 : StackLang.HolProg 64 :=
.seq NamedBody604_15 NamedBody604_38

def NamedBody604_40 : StackLang.HolProg 64 :=
.seq NamedBody604_14 NamedBody604_39

def NamedBody604_41 : StackLang.HolProg 64 :=
.seq NamedBody604_13 NamedBody604_40

def NamedBody604_42 : StackLang.HolProg 64 :=
.seq NamedBody604_12 NamedBody604_41

def NamedBody604_43 : StackLang.HolProg 64 :=
.seq NamedBody604_11 NamedBody604_42

def NamedBody604_44 : StackLang.HolProg 64 :=
.seq NamedBody604_10 NamedBody604_43

def NamedBody604_45 : StackLang.HolProg 64 :=
.seq NamedBody604_9 NamedBody604_44

def NamedBody604_46 : StackLang.HolProg 64 :=
.seq NamedBody604_8 NamedBody604_45

def NamedBody604_47 : StackLang.HolProg 64 :=
.seq NamedBody604_7 NamedBody604_46

def NamedBody604_48 : StackLang.HolProg 64 :=
.seq NamedBody604_6 NamedBody604_47

def NamedBody604_49 : StackLang.HolProg 64 :=
.seq NamedBody604_5 NamedBody604_48

def NamedBody604_50 : StackLang.HolProg 64 :=
.seq NamedBody604_4 NamedBody604_49

def NamedBody604_51 : StackLang.HolProg 64 :=
.seq NamedBody604_3 NamedBody604_50

def NamedBody604_52 : StackLang.HolProg 64 :=
.seq NamedBody604_2 NamedBody604_51

def NamedBody604_53 : StackLang.HolProg 64 :=
.seq NamedBody604_1 NamedBody604_52

def NamedBody604_54 : StackLang.HolProg 64 :=
.seq NamedBody604_0 NamedBody604_53

def Named604 : Nat × StackLang.HolProg 64 := (604, NamedBody604_54)
theorem Named604_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed604 = Named604 := by
  kernel_rfl
#print axioms Named604_eq
end InitECandidate.Proofs.BackendStages
