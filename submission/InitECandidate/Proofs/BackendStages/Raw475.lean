import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function475
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody475_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody475_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody475_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody475_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody475_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 1

def rawBody475_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def rawBody475_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 16#64))

def rawBody475_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody475_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody475_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody475_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody475_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody475_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody475_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody475_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody475_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody475_16 : StackLang.HolProg 64 :=
.seq rawBody475_14 rawBody475_15

def rawBody475_17 : StackLang.HolProg 64 :=
.seq rawBody475_13 rawBody475_16

def rawBody475_18 : StackLang.HolProg 64 :=
.seq rawBody475_12 rawBody475_17

def rawBody475_19 : StackLang.HolProg 64 :=
.seq rawBody475_11 rawBody475_18

def rawBody475_20 : StackLang.HolProg 64 :=
.seq rawBody475_10 rawBody475_19

def rawBody475_21 : StackLang.HolProg 64 :=
.seq rawBody475_9 rawBody475_20

def rawBody475_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody475_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody475_21 rawBody475_22

def rawBody475_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody475_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody475_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody475_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody475_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody475_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody475_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody475_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody475_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody475_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody475_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody475_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def rawBody475_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody475_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody475_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody475_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody475_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody475_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def rawBody475_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody475_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def rawBody475_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody475_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def rawBody475_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody475_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody475_48 : StackLang.HolProg 64 :=
.seq rawBody475_46 rawBody475_47

def rawBody475_49 : StackLang.HolProg 64 :=
.seq rawBody475_45 rawBody475_48

def rawBody475_50 : StackLang.HolProg 64 :=
.seq rawBody475_44 rawBody475_49

def rawBody475_51 : StackLang.HolProg 64 :=
.seq rawBody475_43 rawBody475_50

def rawBody475_52 : StackLang.HolProg 64 :=
.seq rawBody475_42 rawBody475_51

def rawBody475_53 : StackLang.HolProg 64 :=
.seq rawBody475_41 rawBody475_52

def rawBody475_54 : StackLang.HolProg 64 :=
.seq rawBody475_40 rawBody475_53

def rawBody475_55 : StackLang.HolProg 64 :=
.seq rawBody475_39 rawBody475_54

def rawBody475_56 : StackLang.HolProg 64 :=
.seq rawBody475_38 rawBody475_55

def rawBody475_57 : StackLang.HolProg 64 :=
.seq rawBody475_37 rawBody475_56

def rawBody475_58 : StackLang.HolProg 64 :=
.seq rawBody475_36 rawBody475_57

def rawBody475_59 : StackLang.HolProg 64 :=
.seq rawBody475_35 rawBody475_58

def rawBody475_60 : StackLang.HolProg 64 :=
.seq rawBody475_34 rawBody475_59

def rawBody475_61 : StackLang.HolProg 64 :=
.seq rawBody475_33 rawBody475_60

def rawBody475_62 : StackLang.HolProg 64 :=
.seq rawBody475_32 rawBody475_61

def rawBody475_63 : StackLang.HolProg 64 :=
.seq rawBody475_31 rawBody475_62

def rawBody475_64 : StackLang.HolProg 64 :=
.seq rawBody475_30 rawBody475_63

def rawBody475_65 : StackLang.HolProg 64 :=
.seq rawBody475_29 rawBody475_64

def rawBody475_66 : StackLang.HolProg 64 :=
.seq rawBody475_28 rawBody475_65

def rawBody475_67 : StackLang.HolProg 64 :=
.seq rawBody475_27 rawBody475_66

def rawBody475_68 : StackLang.HolProg 64 :=
.seq rawBody475_26 rawBody475_67

def rawBody475_69 : StackLang.HolProg 64 :=
.seq rawBody475_25 rawBody475_68

def rawBody475_70 : StackLang.HolProg 64 :=
.seq rawBody475_24 rawBody475_69

def rawBody475_71 : StackLang.HolProg 64 :=
.seq rawBody475_23 rawBody475_70

def rawBody475_72 : StackLang.HolProg 64 :=
.seq rawBody475_8 rawBody475_71

def rawBody475_73 : StackLang.HolProg 64 :=
.seq rawBody475_7 rawBody475_72

def rawBody475_74 : StackLang.HolProg 64 :=
.seq rawBody475_6 rawBody475_73

def rawBody475_75 : StackLang.HolProg 64 :=
.seq rawBody475_5 rawBody475_74

def rawBody475_76 : StackLang.HolProg 64 :=
.seq rawBody475_4 rawBody475_75

def rawBody475_77 : StackLang.HolProg 64 :=
.seq rawBody475_3 rawBody475_76

def rawBody475_78 : StackLang.HolProg 64 :=
.seq rawBody475_2 rawBody475_77

def rawBody475_79 : StackLang.HolProg 64 :=
.seq rawBody475_1 rawBody475_78

def rawBody475_80 : StackLang.HolProg 64 :=
.seq rawBody475_0 rawBody475_79

def raw475 : StackLang.HolProg 64 := rawBody475_80
theorem raw475_eq : StackRawCall.compTop RawInfo.rawInfo (function475 (.list [])).1 = raw475 := by
  kernel_rfl
#print axioms raw475_eq
end InitECandidate.Proofs.BackendStages
