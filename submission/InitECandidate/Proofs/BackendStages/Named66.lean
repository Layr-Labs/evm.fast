import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed66
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody66_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody66_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody66_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody66_3 : StackLang.HolProg 64 :=
.seq NamedBody66_1 NamedBody66_2

def NamedBody66_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody66_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody66_3 NamedBody66_4

def NamedBody66_6 : StackLang.HolProg 64 :=
.seq NamedBody66_0 NamedBody66_5

def NamedBody66_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody66_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2688614433#64)

def NamedBody66_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 11
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64)

def NamedBody66_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody66_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody66_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody66_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551608#64))

def NamedBody66_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 2688614440#64)

def NamedBody66_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store 12
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64)

def NamedBody66_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody66_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551600#64))

def NamedBody66_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 2688614448#64)

def NamedBody66_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store 10
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64)

def NamedBody66_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 26
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody66_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody66_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody66_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody66_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody66_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody66_26 : StackLang.HolProg 64 :=
.seq NamedBody66_24 NamedBody66_25

def NamedBody66_27 : StackLang.HolProg 64 :=
.seq NamedBody66_23 NamedBody66_26

def NamedBody66_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ffi (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8])
  10 11 12 13 1

def NamedBody66_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody66_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody66_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody66_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody66_33 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody66_34 : StackLang.HolProg 64 :=
.seq NamedBody66_32 NamedBody66_33

def NamedBody66_35 : StackLang.HolProg 64 :=
.seq NamedBody66_31 NamedBody66_34

def NamedBody66_36 : StackLang.HolProg 64 :=
.seq NamedBody66_30 NamedBody66_35

def NamedBody66_37 : StackLang.HolProg 64 :=
.seq NamedBody66_29 NamedBody66_36

def NamedBody66_38 : StackLang.HolProg 64 :=
.seq NamedBody66_28 NamedBody66_37

def NamedBody66_39 : StackLang.HolProg 64 :=
.seq NamedBody66_27 NamedBody66_38

def NamedBody66_40 : StackLang.HolProg 64 :=
.seq NamedBody66_22 NamedBody66_39

def NamedBody66_41 : StackLang.HolProg 64 :=
.seq NamedBody66_21 NamedBody66_40

def NamedBody66_42 : StackLang.HolProg 64 :=
.seq NamedBody66_20 NamedBody66_41

def NamedBody66_43 : StackLang.HolProg 64 :=
.seq NamedBody66_19 NamedBody66_42

def NamedBody66_44 : StackLang.HolProg 64 :=
.seq NamedBody66_18 NamedBody66_43

def NamedBody66_45 : StackLang.HolProg 64 :=
.seq NamedBody66_17 NamedBody66_44

def NamedBody66_46 : StackLang.HolProg 64 :=
.seq NamedBody66_16 NamedBody66_45

def NamedBody66_47 : StackLang.HolProg 64 :=
.seq NamedBody66_15 NamedBody66_46

def NamedBody66_48 : StackLang.HolProg 64 :=
.seq NamedBody66_14 NamedBody66_47

def NamedBody66_49 : StackLang.HolProg 64 :=
.seq NamedBody66_13 NamedBody66_48

def NamedBody66_50 : StackLang.HolProg 64 :=
.seq NamedBody66_12 NamedBody66_49

def NamedBody66_51 : StackLang.HolProg 64 :=
.seq NamedBody66_11 NamedBody66_50

def NamedBody66_52 : StackLang.HolProg 64 :=
.seq NamedBody66_10 NamedBody66_51

def NamedBody66_53 : StackLang.HolProg 64 :=
.seq NamedBody66_9 NamedBody66_52

def NamedBody66_54 : StackLang.HolProg 64 :=
.seq NamedBody66_8 NamedBody66_53

def NamedBody66_55 : StackLang.HolProg 64 :=
.seq NamedBody66_7 NamedBody66_54

def NamedBody66_56 : StackLang.HolProg 64 :=
.seq NamedBody66_6 NamedBody66_55

def Named66 : Nat × StackLang.HolProg 64 := (66, NamedBody66_56)
theorem Named66_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed66 = Named66 := by
  kernel_rfl
#print axioms Named66_eq
end InitECandidate.Proofs.BackendStages
