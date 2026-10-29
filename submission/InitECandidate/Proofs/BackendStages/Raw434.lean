import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function434
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody434_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody434_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody434_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody434_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody434_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody434_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551440#64))

def rawBody434_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 56#64))

def rawBody434_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody434_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody434_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody434_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def rawBody434_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def rawBody434_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody434_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody434_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody434_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551440#64))

def rawBody434_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody434_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody434_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody434_19 : StackLang.HolProg 64 :=
.seq rawBody434_17 rawBody434_18

def rawBody434_20 : StackLang.HolProg 64 :=
.seq rawBody434_16 rawBody434_19

def rawBody434_21 : StackLang.HolProg 64 :=
.seq rawBody434_15 rawBody434_20

def rawBody434_22 : StackLang.HolProg 64 :=
.seq rawBody434_14 rawBody434_21

def rawBody434_23 : StackLang.HolProg 64 :=
.seq rawBody434_13 rawBody434_22

def rawBody434_24 : StackLang.HolProg 64 :=
.seq rawBody434_12 rawBody434_23

def rawBody434_25 : StackLang.HolProg 64 :=
.seq rawBody434_11 rawBody434_24

def rawBody434_26 : StackLang.HolProg 64 :=
.seq rawBody434_10 rawBody434_25

def rawBody434_27 : StackLang.HolProg 64 :=
.seq rawBody434_9 rawBody434_26

def rawBody434_28 : StackLang.HolProg 64 :=
.seq rawBody434_8 rawBody434_27

def rawBody434_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody434_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody434_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def rawBody434_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody434_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody434_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody434_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody434_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody434_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody434_38 : StackLang.HolProg 64 :=
.seq rawBody434_36 rawBody434_37

def rawBody434_39 : StackLang.HolProg 64 :=
.seq rawBody434_35 rawBody434_38

def rawBody434_40 : StackLang.HolProg 64 :=
.seq rawBody434_34 rawBody434_39

def rawBody434_41 : StackLang.HolProg 64 :=
.seq rawBody434_33 rawBody434_40

def rawBody434_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody434_43 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody434_41 rawBody434_42

def rawBody434_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody434_45 : StackLang.HolProg 64 :=
.seq rawBody434_43 rawBody434_44

def rawBody434_46 : StackLang.HolProg 64 :=
.seq rawBody434_32 rawBody434_45

def rawBody434_47 : StackLang.HolProg 64 :=
.seq rawBody434_31 rawBody434_46

def rawBody434_48 : StackLang.HolProg 64 :=
.seq rawBody434_30 rawBody434_47

def rawBody434_49 : StackLang.HolProg 64 :=
.seq rawBody434_29 rawBody434_48

def rawBody434_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody434_28 rawBody434_49

def rawBody434_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody434_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody434_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody434_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody434_55 : StackLang.HolProg 64 :=
.seq rawBody434_53 rawBody434_54

def rawBody434_56 : StackLang.HolProg 64 :=
.seq rawBody434_52 rawBody434_55

def rawBody434_57 : StackLang.HolProg 64 :=
.seq rawBody434_51 rawBody434_56

def rawBody434_58 : StackLang.HolProg 64 :=
.seq rawBody434_50 rawBody434_57

def rawBody434_59 : StackLang.HolProg 64 :=
.seq rawBody434_7 rawBody434_58

def rawBody434_60 : StackLang.HolProg 64 :=
.seq rawBody434_6 rawBody434_59

def rawBody434_61 : StackLang.HolProg 64 :=
.seq rawBody434_5 rawBody434_60

def rawBody434_62 : StackLang.HolProg 64 :=
.seq rawBody434_4 rawBody434_61

def rawBody434_63 : StackLang.HolProg 64 :=
.seq rawBody434_3 rawBody434_62

def rawBody434_64 : StackLang.HolProg 64 :=
.seq rawBody434_2 rawBody434_63

def rawBody434_65 : StackLang.HolProg 64 :=
.seq rawBody434_1 rawBody434_64

def rawBody434_66 : StackLang.HolProg 64 :=
.seq rawBody434_0 rawBody434_65

def raw434 : StackLang.HolProg 64 := rawBody434_66
theorem raw434_eq : StackRawCall.compTop RawInfo.rawInfo (function434 (.list [])).1 = raw434 := by
  kernel_rfl
#print axioms raw434_eq
end InitECandidate.Proofs.BackendStages
