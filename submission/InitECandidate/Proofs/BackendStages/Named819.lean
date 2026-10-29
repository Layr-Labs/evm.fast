import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed819
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody819_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody819_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody819_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 128#64)

def NamedBody819_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody819_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody819_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 519#64)

def NamedBody819_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody819_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody819_8 : StackLang.HolProg 64 :=
.seq NamedBody819_6 NamedBody819_7

def NamedBody819_9 : StackLang.HolProg 64 :=
.seq NamedBody819_5 NamedBody819_8

def NamedBody819_10 : StackLang.HolProg 64 :=
.seq NamedBody819_4 NamedBody819_9

def NamedBody819_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody819_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody819_10 NamedBody819_11

def NamedBody819_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody819_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody819_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody819_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody819_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody819_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody819_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody819_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody819_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551216#64))

def NamedBody819_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody819_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody819_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody819_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody819_26 : StackLang.HolProg 64 :=
.seq NamedBody819_24 NamedBody819_25

def NamedBody819_27 : StackLang.HolProg 64 :=
.seq NamedBody819_23 NamedBody819_26

def NamedBody819_28 : StackLang.HolProg 64 :=
.seq NamedBody819_22 NamedBody819_27

def NamedBody819_29 : StackLang.HolProg 64 :=
.seq NamedBody819_21 NamedBody819_28

def NamedBody819_30 : StackLang.HolProg 64 :=
.seq NamedBody819_20 NamedBody819_29

def NamedBody819_31 : StackLang.HolProg 64 :=
.seq NamedBody819_19 NamedBody819_30

def NamedBody819_32 : StackLang.HolProg 64 :=
.seq NamedBody819_18 NamedBody819_31

def NamedBody819_33 : StackLang.HolProg 64 :=
.seq NamedBody819_17 NamedBody819_32

def NamedBody819_34 : StackLang.HolProg 64 :=
.seq NamedBody819_16 NamedBody819_33

def NamedBody819_35 : StackLang.HolProg 64 :=
.seq NamedBody819_15 NamedBody819_34

def NamedBody819_36 : StackLang.HolProg 64 :=
.seq NamedBody819_14 NamedBody819_35

def NamedBody819_37 : StackLang.HolProg 64 :=
.seq NamedBody819_13 NamedBody819_36

def NamedBody819_38 : StackLang.HolProg 64 :=
.seq NamedBody819_12 NamedBody819_37

def NamedBody819_39 : StackLang.HolProg 64 :=
.seq NamedBody819_3 NamedBody819_38

def NamedBody819_40 : StackLang.HolProg 64 :=
.seq NamedBody819_2 NamedBody819_39

def NamedBody819_41 : StackLang.HolProg 64 :=
.seq NamedBody819_1 NamedBody819_40

def NamedBody819_42 : StackLang.HolProg 64 :=
.seq NamedBody819_0 NamedBody819_41

def Named819 : Nat × StackLang.HolProg 64 := (819, NamedBody819_42)
theorem Named819_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed819 = Named819 := by
  kernel_rfl
#print axioms Named819_eq
end InitECandidate.Proofs.BackendStages
