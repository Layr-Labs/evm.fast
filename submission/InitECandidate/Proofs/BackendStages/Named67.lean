import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed67
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody67_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody67_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody67_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody67_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody67_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody67_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def NamedBody67_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 26
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody67_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody67_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody67_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody67_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551592#64)))

def NamedBody67_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 2965299200#64)

def NamedBody67_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody67_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody67_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody67_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def NamedBody67_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 2952790016#64)

def NamedBody67_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody67_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody67_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody67_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody67_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody67_22 : StackLang.HolProg 64 :=
.seq NamedBody67_20 NamedBody67_21

def NamedBody67_23 : StackLang.HolProg 64 :=
.seq NamedBody67_19 NamedBody67_22

def NamedBody67_24 : StackLang.HolProg 64 :=
.seq NamedBody67_18 NamedBody67_23

def NamedBody67_25 : StackLang.HolProg 64 :=
.seq NamedBody67_17 NamedBody67_24

def NamedBody67_26 : StackLang.HolProg 64 :=
.seq NamedBody67_16 NamedBody67_25

def NamedBody67_27 : StackLang.HolProg 64 :=
.seq NamedBody67_15 NamedBody67_26

def NamedBody67_28 : StackLang.HolProg 64 :=
.seq NamedBody67_14 NamedBody67_27

def NamedBody67_29 : StackLang.HolProg 64 :=
.seq NamedBody67_13 NamedBody67_28

def NamedBody67_30 : StackLang.HolProg 64 :=
.seq NamedBody67_12 NamedBody67_29

def NamedBody67_31 : StackLang.HolProg 64 :=
.seq NamedBody67_11 NamedBody67_30

def NamedBody67_32 : StackLang.HolProg 64 :=
.seq NamedBody67_10 NamedBody67_31

def NamedBody67_33 : StackLang.HolProg 64 :=
.seq NamedBody67_9 NamedBody67_32

def NamedBody67_34 : StackLang.HolProg 64 :=
.seq NamedBody67_8 NamedBody67_33

def NamedBody67_35 : StackLang.HolProg 64 :=
.seq NamedBody67_7 NamedBody67_34

def NamedBody67_36 : StackLang.HolProg 64 :=
.seq NamedBody67_6 NamedBody67_35

def NamedBody67_37 : StackLang.HolProg 64 :=
.seq NamedBody67_5 NamedBody67_36

def NamedBody67_38 : StackLang.HolProg 64 :=
.seq NamedBody67_4 NamedBody67_37

def NamedBody67_39 : StackLang.HolProg 64 :=
.seq NamedBody67_3 NamedBody67_38

def NamedBody67_40 : StackLang.HolProg 64 :=
.seq NamedBody67_2 NamedBody67_39

def NamedBody67_41 : StackLang.HolProg 64 :=
.seq NamedBody67_1 NamedBody67_40

def NamedBody67_42 : StackLang.HolProg 64 :=
.seq NamedBody67_0 NamedBody67_41

def Named67 : Nat × StackLang.HolProg 64 := (67, NamedBody67_42)
theorem Named67_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed67 = Named67 := by
  kernel_rfl
#print axioms Named67_eq
end InitECandidate.Proofs.BackendStages
