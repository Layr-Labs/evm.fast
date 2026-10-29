import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function819
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody819_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody819_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody819_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 128#64)

def rawBody819_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody819_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody819_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 519#64)

def rawBody819_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody819_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody819_8 : StackLang.HolProg 64 :=
.seq rawBody819_6 rawBody819_7

def rawBody819_9 : StackLang.HolProg 64 :=
.seq rawBody819_5 rawBody819_8

def rawBody819_10 : StackLang.HolProg 64 :=
.seq rawBody819_4 rawBody819_9

def rawBody819_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody819_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody819_10 rawBody819_11

def rawBody819_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody819_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody819_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody819_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody819_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody819_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody819_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody819_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody819_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551216#64))

def rawBody819_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody819_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody819_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody819_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody819_26 : StackLang.HolProg 64 :=
.seq rawBody819_24 rawBody819_25

def rawBody819_27 : StackLang.HolProg 64 :=
.seq rawBody819_23 rawBody819_26

def rawBody819_28 : StackLang.HolProg 64 :=
.seq rawBody819_22 rawBody819_27

def rawBody819_29 : StackLang.HolProg 64 :=
.seq rawBody819_21 rawBody819_28

def rawBody819_30 : StackLang.HolProg 64 :=
.seq rawBody819_20 rawBody819_29

def rawBody819_31 : StackLang.HolProg 64 :=
.seq rawBody819_19 rawBody819_30

def rawBody819_32 : StackLang.HolProg 64 :=
.seq rawBody819_18 rawBody819_31

def rawBody819_33 : StackLang.HolProg 64 :=
.seq rawBody819_17 rawBody819_32

def rawBody819_34 : StackLang.HolProg 64 :=
.seq rawBody819_16 rawBody819_33

def rawBody819_35 : StackLang.HolProg 64 :=
.seq rawBody819_15 rawBody819_34

def rawBody819_36 : StackLang.HolProg 64 :=
.seq rawBody819_14 rawBody819_35

def rawBody819_37 : StackLang.HolProg 64 :=
.seq rawBody819_13 rawBody819_36

def rawBody819_38 : StackLang.HolProg 64 :=
.seq rawBody819_12 rawBody819_37

def rawBody819_39 : StackLang.HolProg 64 :=
.seq rawBody819_3 rawBody819_38

def rawBody819_40 : StackLang.HolProg 64 :=
.seq rawBody819_2 rawBody819_39

def rawBody819_41 : StackLang.HolProg 64 :=
.seq rawBody819_1 rawBody819_40

def rawBody819_42 : StackLang.HolProg 64 :=
.seq rawBody819_0 rawBody819_41

def raw819 : StackLang.HolProg 64 := rawBody819_42
theorem raw819_eq : StackRawCall.compTop RawInfo.rawInfo (function819 (.list [])).1 = raw819 := by
  kernel_rfl
#print axioms raw819_eq
end InitECandidate.Proofs.BackendStages
