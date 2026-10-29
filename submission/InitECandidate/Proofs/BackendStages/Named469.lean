import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed469
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody469_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody469_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody469_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody469_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody469_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody469_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551360#64))

def NamedBody469_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 64#64))

def NamedBody469_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody469_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody469_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody469_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody469_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody469_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody469_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody469_14 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody469_15 : StackLang.HolProg 64 :=
.seq NamedBody469_13 NamedBody469_14

def NamedBody469_16 : StackLang.HolProg 64 :=
.seq NamedBody469_12 NamedBody469_15

def NamedBody469_17 : StackLang.HolProg 64 :=
.seq NamedBody469_11 NamedBody469_16

def NamedBody469_18 : StackLang.HolProg 64 :=
.seq NamedBody469_10 NamedBody469_17

def NamedBody469_19 : StackLang.HolProg 64 :=
.seq NamedBody469_9 NamedBody469_18

def NamedBody469_20 : StackLang.HolProg 64 :=
.seq NamedBody469_8 NamedBody469_19

def NamedBody469_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody469_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody469_20 NamedBody469_21

def NamedBody469_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody469_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody469_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody469_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody469_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody469_28 : StackLang.HolProg 64 :=
.seq NamedBody469_26 NamedBody469_27

def NamedBody469_29 : StackLang.HolProg 64 :=
.seq NamedBody469_25 NamedBody469_28

def NamedBody469_30 : StackLang.HolProg 64 :=
.seq NamedBody469_24 NamedBody469_29

def NamedBody469_31 : StackLang.HolProg 64 :=
.seq NamedBody469_23 NamedBody469_30

def NamedBody469_32 : StackLang.HolProg 64 :=
.seq NamedBody469_22 NamedBody469_31

def NamedBody469_33 : StackLang.HolProg 64 :=
.seq NamedBody469_7 NamedBody469_32

def NamedBody469_34 : StackLang.HolProg 64 :=
.seq NamedBody469_6 NamedBody469_33

def NamedBody469_35 : StackLang.HolProg 64 :=
.seq NamedBody469_5 NamedBody469_34

def NamedBody469_36 : StackLang.HolProg 64 :=
.seq NamedBody469_4 NamedBody469_35

def NamedBody469_37 : StackLang.HolProg 64 :=
.seq NamedBody469_3 NamedBody469_36

def NamedBody469_38 : StackLang.HolProg 64 :=
.seq NamedBody469_2 NamedBody469_37

def NamedBody469_39 : StackLang.HolProg 64 :=
.seq NamedBody469_1 NamedBody469_38

def NamedBody469_40 : StackLang.HolProg 64 :=
.seq NamedBody469_0 NamedBody469_39

def Named469 : Nat × StackLang.HolProg 64 := (469, NamedBody469_40)
theorem Named469_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed469 = Named469 := by
  kernel_rfl
#print axioms Named469_eq
end InitECandidate.Proofs.BackendStages
