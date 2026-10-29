import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed474
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody474_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody474_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody474_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody474_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody474_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody474_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody474_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 112#64))

def NamedBody474_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody474_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody474_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody474_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 192#64))

def NamedBody474_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody474_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 64#64))

def NamedBody474_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody474_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody474_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody474_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody474_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody474_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def NamedBody474_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody474_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 48#64))

def NamedBody474_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody474_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody474_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody474_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody474_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody474_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody474_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody474_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody474_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody474_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody474_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody474_32 : StackLang.HolProg 64 :=
.seq NamedBody474_30 NamedBody474_31

def NamedBody474_33 : StackLang.HolProg 64 :=
.seq NamedBody474_29 NamedBody474_32

def NamedBody474_34 : StackLang.HolProg 64 :=
.seq NamedBody474_28 NamedBody474_33

def NamedBody474_35 : StackLang.HolProg 64 :=
.seq NamedBody474_27 NamedBody474_34

def NamedBody474_36 : StackLang.HolProg 64 :=
.seq NamedBody474_26 NamedBody474_35

def NamedBody474_37 : StackLang.HolProg 64 :=
.seq NamedBody474_25 NamedBody474_36

def NamedBody474_38 : StackLang.HolProg 64 :=
.seq NamedBody474_24 NamedBody474_37

def NamedBody474_39 : StackLang.HolProg 64 :=
.seq NamedBody474_23 NamedBody474_38

def NamedBody474_40 : StackLang.HolProg 64 :=
.seq NamedBody474_22 NamedBody474_39

def NamedBody474_41 : StackLang.HolProg 64 :=
.seq NamedBody474_21 NamedBody474_40

def NamedBody474_42 : StackLang.HolProg 64 :=
.seq NamedBody474_20 NamedBody474_41

def NamedBody474_43 : StackLang.HolProg 64 :=
.seq NamedBody474_19 NamedBody474_42

def NamedBody474_44 : StackLang.HolProg 64 :=
.seq NamedBody474_18 NamedBody474_43

def NamedBody474_45 : StackLang.HolProg 64 :=
.seq NamedBody474_17 NamedBody474_44

def NamedBody474_46 : StackLang.HolProg 64 :=
.seq NamedBody474_16 NamedBody474_45

def NamedBody474_47 : StackLang.HolProg 64 :=
.seq NamedBody474_15 NamedBody474_46

def NamedBody474_48 : StackLang.HolProg 64 :=
.seq NamedBody474_14 NamedBody474_47

def NamedBody474_49 : StackLang.HolProg 64 :=
.seq NamedBody474_13 NamedBody474_48

def NamedBody474_50 : StackLang.HolProg 64 :=
.seq NamedBody474_12 NamedBody474_49

def NamedBody474_51 : StackLang.HolProg 64 :=
.seq NamedBody474_11 NamedBody474_50

def NamedBody474_52 : StackLang.HolProg 64 :=
.seq NamedBody474_10 NamedBody474_51

def NamedBody474_53 : StackLang.HolProg 64 :=
.seq NamedBody474_9 NamedBody474_52

def NamedBody474_54 : StackLang.HolProg 64 :=
.seq NamedBody474_8 NamedBody474_53

def NamedBody474_55 : StackLang.HolProg 64 :=
.seq NamedBody474_7 NamedBody474_54

def NamedBody474_56 : StackLang.HolProg 64 :=
.seq NamedBody474_6 NamedBody474_55

def NamedBody474_57 : StackLang.HolProg 64 :=
.seq NamedBody474_5 NamedBody474_56

def NamedBody474_58 : StackLang.HolProg 64 :=
.seq NamedBody474_4 NamedBody474_57

def NamedBody474_59 : StackLang.HolProg 64 :=
.seq NamedBody474_3 NamedBody474_58

def NamedBody474_60 : StackLang.HolProg 64 :=
.seq NamedBody474_2 NamedBody474_59

def NamedBody474_61 : StackLang.HolProg 64 :=
.seq NamedBody474_1 NamedBody474_60

def NamedBody474_62 : StackLang.HolProg 64 :=
.seq NamedBody474_0 NamedBody474_61

def Named474 : Nat × StackLang.HolProg 64 := (474, NamedBody474_62)
theorem Named474_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed474 = Named474 := by
  kernel_rfl
#print axioms Named474_eq
end InitECandidate.Proofs.BackendStages
