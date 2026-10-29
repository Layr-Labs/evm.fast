import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function820
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody820_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody820_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody820_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 128#64)

def rawBody820_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody820_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody820_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 524#64)

def rawBody820_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody820_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody820_8 : StackLang.HolProg 64 :=
.seq rawBody820_6 rawBody820_7

def rawBody820_9 : StackLang.HolProg 64 :=
.seq rawBody820_5 rawBody820_8

def rawBody820_10 : StackLang.HolProg 64 :=
.seq rawBody820_4 rawBody820_9

def rawBody820_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody820_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody820_10 rawBody820_11

def rawBody820_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody820_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody820_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody820_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody820_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody820_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody820_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody820_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody820_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody820_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551216#64))

def rawBody820_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody820_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody820_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody820_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody820_27 : StackLang.HolProg 64 :=
.seq rawBody820_25 rawBody820_26

def rawBody820_28 : StackLang.HolProg 64 :=
.seq rawBody820_24 rawBody820_27

def rawBody820_29 : StackLang.HolProg 64 :=
.seq rawBody820_23 rawBody820_28

def rawBody820_30 : StackLang.HolProg 64 :=
.seq rawBody820_22 rawBody820_29

def rawBody820_31 : StackLang.HolProg 64 :=
.seq rawBody820_21 rawBody820_30

def rawBody820_32 : StackLang.HolProg 64 :=
.seq rawBody820_20 rawBody820_31

def rawBody820_33 : StackLang.HolProg 64 :=
.seq rawBody820_19 rawBody820_32

def rawBody820_34 : StackLang.HolProg 64 :=
.seq rawBody820_18 rawBody820_33

def rawBody820_35 : StackLang.HolProg 64 :=
.seq rawBody820_17 rawBody820_34

def rawBody820_36 : StackLang.HolProg 64 :=
.seq rawBody820_16 rawBody820_35

def rawBody820_37 : StackLang.HolProg 64 :=
.seq rawBody820_15 rawBody820_36

def rawBody820_38 : StackLang.HolProg 64 :=
.seq rawBody820_14 rawBody820_37

def rawBody820_39 : StackLang.HolProg 64 :=
.seq rawBody820_13 rawBody820_38

def rawBody820_40 : StackLang.HolProg 64 :=
.seq rawBody820_12 rawBody820_39

def rawBody820_41 : StackLang.HolProg 64 :=
.seq rawBody820_3 rawBody820_40

def rawBody820_42 : StackLang.HolProg 64 :=
.seq rawBody820_2 rawBody820_41

def rawBody820_43 : StackLang.HolProg 64 :=
.seq rawBody820_1 rawBody820_42

def rawBody820_44 : StackLang.HolProg 64 :=
.seq rawBody820_0 rawBody820_43

def raw820 : StackLang.HolProg 64 := rawBody820_44
theorem raw820_eq : StackRawCall.compTop RawInfo.rawInfo (function820 (.list [])).1 = raw820 := by
  kernel_rfl
#print axioms raw820_eq
end InitECandidate.Proofs.BackendStages
