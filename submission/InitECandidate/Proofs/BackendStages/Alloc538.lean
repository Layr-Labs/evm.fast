import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw538
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody538_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody538_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 3 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody538_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody538_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 3 3

def AllocBody538_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551360#64))

def AllocBody538_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 16#64))

def AllocBody538_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def AllocBody538_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody538_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody538_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody538_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody538_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody538_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody538_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody538_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody538_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def AllocBody538_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def AllocBody538_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 24#64))

def AllocBody538_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def AllocBody538_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def AllocBody538_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def AllocBody538_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def AllocBody538_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody538_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def AllocBody538_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def AllocBody538_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 24#64))

def AllocBody538_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def AllocBody538_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def AllocBody538_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def AllocBody538_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def AllocBody538_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody538_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody538_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody538_56 : StackLang.HolProg 64 :=
.seq AllocBody538_54 AllocBody538_55

def AllocBody538_57 : StackLang.HolProg 64 :=
.seq AllocBody538_53 AllocBody538_56

def AllocBody538_58 : StackLang.HolProg 64 :=
.seq AllocBody538_52 AllocBody538_57

def AllocBody538_59 : StackLang.HolProg 64 :=
.seq AllocBody538_51 AllocBody538_58

def AllocBody538_60 : StackLang.HolProg 64 :=
.seq AllocBody538_50 AllocBody538_59

def AllocBody538_61 : StackLang.HolProg 64 :=
.seq AllocBody538_49 AllocBody538_60

def AllocBody538_62 : StackLang.HolProg 64 :=
.seq AllocBody538_48 AllocBody538_61

def AllocBody538_63 : StackLang.HolProg 64 :=
.seq AllocBody538_47 AllocBody538_62

def AllocBody538_64 : StackLang.HolProg 64 :=
.seq AllocBody538_46 AllocBody538_63

def AllocBody538_65 : StackLang.HolProg 64 :=
.seq AllocBody538_45 AllocBody538_64

def AllocBody538_66 : StackLang.HolProg 64 :=
.seq AllocBody538_44 AllocBody538_65

def AllocBody538_67 : StackLang.HolProg 64 :=
.seq AllocBody538_43 AllocBody538_66

def AllocBody538_68 : StackLang.HolProg 64 :=
.seq AllocBody538_42 AllocBody538_67

def AllocBody538_69 : StackLang.HolProg 64 :=
.seq AllocBody538_41 AllocBody538_68

def AllocBody538_70 : StackLang.HolProg 64 :=
.seq AllocBody538_40 AllocBody538_69

def AllocBody538_71 : StackLang.HolProg 64 :=
.seq AllocBody538_39 AllocBody538_70

def AllocBody538_72 : StackLang.HolProg 64 :=
.seq AllocBody538_38 AllocBody538_71

def AllocBody538_73 : StackLang.HolProg 64 :=
.seq AllocBody538_37 AllocBody538_72

def AllocBody538_74 : StackLang.HolProg 64 :=
.seq AllocBody538_36 AllocBody538_73

def AllocBody538_75 : StackLang.HolProg 64 :=
.seq AllocBody538_35 AllocBody538_74

def AllocBody538_76 : StackLang.HolProg 64 :=
.seq AllocBody538_34 AllocBody538_75

def AllocBody538_77 : StackLang.HolProg 64 :=
.seq AllocBody538_33 AllocBody538_76

def AllocBody538_78 : StackLang.HolProg 64 :=
.seq AllocBody538_32 AllocBody538_77

def AllocBody538_79 : StackLang.HolProg 64 :=
.seq AllocBody538_31 AllocBody538_78

def AllocBody538_80 : StackLang.HolProg 64 :=
.seq AllocBody538_30 AllocBody538_79

def AllocBody538_81 : StackLang.HolProg 64 :=
.seq AllocBody538_29 AllocBody538_80

def AllocBody538_82 : StackLang.HolProg 64 :=
.seq AllocBody538_28 AllocBody538_81

def AllocBody538_83 : StackLang.HolProg 64 :=
.seq AllocBody538_27 AllocBody538_82

def AllocBody538_84 : StackLang.HolProg 64 :=
.seq AllocBody538_26 AllocBody538_83

def AllocBody538_85 : StackLang.HolProg 64 :=
.seq AllocBody538_25 AllocBody538_84

def AllocBody538_86 : StackLang.HolProg 64 :=
.seq AllocBody538_24 AllocBody538_85

def AllocBody538_87 : StackLang.HolProg 64 :=
.seq AllocBody538_23 AllocBody538_86

def AllocBody538_88 : StackLang.HolProg 64 :=
.seq AllocBody538_22 AllocBody538_87

def AllocBody538_89 : StackLang.HolProg 64 :=
.seq AllocBody538_21 AllocBody538_88

def AllocBody538_90 : StackLang.HolProg 64 :=
.seq AllocBody538_20 AllocBody538_89

def AllocBody538_91 : StackLang.HolProg 64 :=
.seq AllocBody538_19 AllocBody538_90

def AllocBody538_92 : StackLang.HolProg 64 :=
.seq AllocBody538_18 AllocBody538_91

def AllocBody538_93 : StackLang.HolProg 64 :=
.seq AllocBody538_17 AllocBody538_92

def AllocBody538_94 : StackLang.HolProg 64 :=
.seq AllocBody538_16 AllocBody538_93

def AllocBody538_95 : StackLang.HolProg 64 :=
.seq AllocBody538_15 AllocBody538_94

def AllocBody538_96 : StackLang.HolProg 64 :=
.seq AllocBody538_14 AllocBody538_95

def AllocBody538_97 : StackLang.HolProg 64 :=
.seq AllocBody538_13 AllocBody538_96

def AllocBody538_98 : StackLang.HolProg 64 :=
.seq AllocBody538_12 AllocBody538_97

def AllocBody538_99 : StackLang.HolProg 64 :=
.seq AllocBody538_11 AllocBody538_98

def AllocBody538_100 : StackLang.HolProg 64 :=
.seq AllocBody538_10 AllocBody538_99

def AllocBody538_101 : StackLang.HolProg 64 :=
.seq AllocBody538_9 AllocBody538_100

def AllocBody538_102 : StackLang.HolProg 64 :=
.seq AllocBody538_8 AllocBody538_101

def AllocBody538_103 : StackLang.HolProg 64 :=
.seq AllocBody538_7 AllocBody538_102

def AllocBody538_104 : StackLang.HolProg 64 :=
.seq AllocBody538_6 AllocBody538_103

def AllocBody538_105 : StackLang.HolProg 64 :=
.seq AllocBody538_5 AllocBody538_104

def AllocBody538_106 : StackLang.HolProg 64 :=
.seq AllocBody538_4 AllocBody538_105

def AllocBody538_107 : StackLang.HolProg 64 :=
.seq AllocBody538_3 AllocBody538_106

def AllocBody538_108 : StackLang.HolProg 64 :=
.seq AllocBody538_2 AllocBody538_107

def AllocBody538_109 : StackLang.HolProg 64 :=
.seq AllocBody538_1 AllocBody538_108

def AllocBody538_110 : StackLang.HolProg 64 :=
.seq AllocBody538_0 AllocBody538_109

def Alloc538 : Nat × StackLang.HolProg 64 := (538, AllocBody538_110)
theorem Alloc538_eq : StackAlloc.progComp (538, raw538) = Alloc538 := by
  kernel_rfl
#print axioms Alloc538_eq
end InitECandidate.Proofs.BackendStages
