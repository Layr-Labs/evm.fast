import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed820
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody820_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody820_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody820_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 128#64)

def NamedBody820_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody820_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody820_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 524#64)

def NamedBody820_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody820_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody820_8 : StackLang.HolProg 64 :=
.seq NamedBody820_6 NamedBody820_7

def NamedBody820_9 : StackLang.HolProg 64 :=
.seq NamedBody820_5 NamedBody820_8

def NamedBody820_10 : StackLang.HolProg 64 :=
.seq NamedBody820_4 NamedBody820_9

def NamedBody820_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody820_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody820_10 NamedBody820_11

def NamedBody820_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody820_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody820_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody820_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody820_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody820_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody820_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody820_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody820_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody820_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551216#64))

def NamedBody820_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody820_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody820_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody820_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody820_27 : StackLang.HolProg 64 :=
.seq NamedBody820_25 NamedBody820_26

def NamedBody820_28 : StackLang.HolProg 64 :=
.seq NamedBody820_24 NamedBody820_27

def NamedBody820_29 : StackLang.HolProg 64 :=
.seq NamedBody820_23 NamedBody820_28

def NamedBody820_30 : StackLang.HolProg 64 :=
.seq NamedBody820_22 NamedBody820_29

def NamedBody820_31 : StackLang.HolProg 64 :=
.seq NamedBody820_21 NamedBody820_30

def NamedBody820_32 : StackLang.HolProg 64 :=
.seq NamedBody820_20 NamedBody820_31

def NamedBody820_33 : StackLang.HolProg 64 :=
.seq NamedBody820_19 NamedBody820_32

def NamedBody820_34 : StackLang.HolProg 64 :=
.seq NamedBody820_18 NamedBody820_33

def NamedBody820_35 : StackLang.HolProg 64 :=
.seq NamedBody820_17 NamedBody820_34

def NamedBody820_36 : StackLang.HolProg 64 :=
.seq NamedBody820_16 NamedBody820_35

def NamedBody820_37 : StackLang.HolProg 64 :=
.seq NamedBody820_15 NamedBody820_36

def NamedBody820_38 : StackLang.HolProg 64 :=
.seq NamedBody820_14 NamedBody820_37

def NamedBody820_39 : StackLang.HolProg 64 :=
.seq NamedBody820_13 NamedBody820_38

def NamedBody820_40 : StackLang.HolProg 64 :=
.seq NamedBody820_12 NamedBody820_39

def NamedBody820_41 : StackLang.HolProg 64 :=
.seq NamedBody820_3 NamedBody820_40

def NamedBody820_42 : StackLang.HolProg 64 :=
.seq NamedBody820_2 NamedBody820_41

def NamedBody820_43 : StackLang.HolProg 64 :=
.seq NamedBody820_1 NamedBody820_42

def NamedBody820_44 : StackLang.HolProg 64 :=
.seq NamedBody820_0 NamedBody820_43

def Named820 : Nat × StackLang.HolProg 64 := (820, NamedBody820_44)
theorem Named820_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed820 = Named820 := by
  kernel_rfl
#print axioms Named820_eq
end InitECandidate.Proofs.BackendStages
