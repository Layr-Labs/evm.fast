import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed538
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody538_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody538_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody538_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody538_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 18446744073709551360#64))

def NamedBody538_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 16#64))

def NamedBody538_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 8#64))

def NamedBody538_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody538_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody538_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody538_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody538_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody538_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody538_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 27 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody538_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody538_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def NamedBody538_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def NamedBody538_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 24#64))

def NamedBody538_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 27 0#64))

def NamedBody538_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 27 8#64))

def NamedBody538_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 27 16#64))

def NamedBody538_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 27 24#64))

def NamedBody538_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody538_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def NamedBody538_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def NamedBody538_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 24#64))

def NamedBody538_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 27 0#64))

def NamedBody538_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 27 8#64))

def NamedBody538_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 27 16#64))

def NamedBody538_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 27 24#64))

def NamedBody538_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody538_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody538_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody538_56 : StackLang.HolProg 64 :=
.seq NamedBody538_54 NamedBody538_55

def NamedBody538_57 : StackLang.HolProg 64 :=
.seq NamedBody538_53 NamedBody538_56

def NamedBody538_58 : StackLang.HolProg 64 :=
.seq NamedBody538_52 NamedBody538_57

def NamedBody538_59 : StackLang.HolProg 64 :=
.seq NamedBody538_51 NamedBody538_58

def NamedBody538_60 : StackLang.HolProg 64 :=
.seq NamedBody538_50 NamedBody538_59

def NamedBody538_61 : StackLang.HolProg 64 :=
.seq NamedBody538_49 NamedBody538_60

def NamedBody538_62 : StackLang.HolProg 64 :=
.seq NamedBody538_48 NamedBody538_61

def NamedBody538_63 : StackLang.HolProg 64 :=
.seq NamedBody538_47 NamedBody538_62

def NamedBody538_64 : StackLang.HolProg 64 :=
.seq NamedBody538_46 NamedBody538_63

def NamedBody538_65 : StackLang.HolProg 64 :=
.seq NamedBody538_45 NamedBody538_64

def NamedBody538_66 : StackLang.HolProg 64 :=
.seq NamedBody538_44 NamedBody538_65

def NamedBody538_67 : StackLang.HolProg 64 :=
.seq NamedBody538_43 NamedBody538_66

def NamedBody538_68 : StackLang.HolProg 64 :=
.seq NamedBody538_42 NamedBody538_67

def NamedBody538_69 : StackLang.HolProg 64 :=
.seq NamedBody538_41 NamedBody538_68

def NamedBody538_70 : StackLang.HolProg 64 :=
.seq NamedBody538_40 NamedBody538_69

def NamedBody538_71 : StackLang.HolProg 64 :=
.seq NamedBody538_39 NamedBody538_70

def NamedBody538_72 : StackLang.HolProg 64 :=
.seq NamedBody538_38 NamedBody538_71

def NamedBody538_73 : StackLang.HolProg 64 :=
.seq NamedBody538_37 NamedBody538_72

def NamedBody538_74 : StackLang.HolProg 64 :=
.seq NamedBody538_36 NamedBody538_73

def NamedBody538_75 : StackLang.HolProg 64 :=
.seq NamedBody538_35 NamedBody538_74

def NamedBody538_76 : StackLang.HolProg 64 :=
.seq NamedBody538_34 NamedBody538_75

def NamedBody538_77 : StackLang.HolProg 64 :=
.seq NamedBody538_33 NamedBody538_76

def NamedBody538_78 : StackLang.HolProg 64 :=
.seq NamedBody538_32 NamedBody538_77

def NamedBody538_79 : StackLang.HolProg 64 :=
.seq NamedBody538_31 NamedBody538_78

def NamedBody538_80 : StackLang.HolProg 64 :=
.seq NamedBody538_30 NamedBody538_79

def NamedBody538_81 : StackLang.HolProg 64 :=
.seq NamedBody538_29 NamedBody538_80

def NamedBody538_82 : StackLang.HolProg 64 :=
.seq NamedBody538_28 NamedBody538_81

def NamedBody538_83 : StackLang.HolProg 64 :=
.seq NamedBody538_27 NamedBody538_82

def NamedBody538_84 : StackLang.HolProg 64 :=
.seq NamedBody538_26 NamedBody538_83

def NamedBody538_85 : StackLang.HolProg 64 :=
.seq NamedBody538_25 NamedBody538_84

def NamedBody538_86 : StackLang.HolProg 64 :=
.seq NamedBody538_24 NamedBody538_85

def NamedBody538_87 : StackLang.HolProg 64 :=
.seq NamedBody538_23 NamedBody538_86

def NamedBody538_88 : StackLang.HolProg 64 :=
.seq NamedBody538_22 NamedBody538_87

def NamedBody538_89 : StackLang.HolProg 64 :=
.seq NamedBody538_21 NamedBody538_88

def NamedBody538_90 : StackLang.HolProg 64 :=
.seq NamedBody538_20 NamedBody538_89

def NamedBody538_91 : StackLang.HolProg 64 :=
.seq NamedBody538_19 NamedBody538_90

def NamedBody538_92 : StackLang.HolProg 64 :=
.seq NamedBody538_18 NamedBody538_91

def NamedBody538_93 : StackLang.HolProg 64 :=
.seq NamedBody538_17 NamedBody538_92

def NamedBody538_94 : StackLang.HolProg 64 :=
.seq NamedBody538_16 NamedBody538_93

def NamedBody538_95 : StackLang.HolProg 64 :=
.seq NamedBody538_15 NamedBody538_94

def NamedBody538_96 : StackLang.HolProg 64 :=
.seq NamedBody538_14 NamedBody538_95

def NamedBody538_97 : StackLang.HolProg 64 :=
.seq NamedBody538_13 NamedBody538_96

def NamedBody538_98 : StackLang.HolProg 64 :=
.seq NamedBody538_12 NamedBody538_97

def NamedBody538_99 : StackLang.HolProg 64 :=
.seq NamedBody538_11 NamedBody538_98

def NamedBody538_100 : StackLang.HolProg 64 :=
.seq NamedBody538_10 NamedBody538_99

def NamedBody538_101 : StackLang.HolProg 64 :=
.seq NamedBody538_9 NamedBody538_100

def NamedBody538_102 : StackLang.HolProg 64 :=
.seq NamedBody538_8 NamedBody538_101

def NamedBody538_103 : StackLang.HolProg 64 :=
.seq NamedBody538_7 NamedBody538_102

def NamedBody538_104 : StackLang.HolProg 64 :=
.seq NamedBody538_6 NamedBody538_103

def NamedBody538_105 : StackLang.HolProg 64 :=
.seq NamedBody538_5 NamedBody538_104

def NamedBody538_106 : StackLang.HolProg 64 :=
.seq NamedBody538_4 NamedBody538_105

def NamedBody538_107 : StackLang.HolProg 64 :=
.seq NamedBody538_3 NamedBody538_106

def NamedBody538_108 : StackLang.HolProg 64 :=
.seq NamedBody538_2 NamedBody538_107

def NamedBody538_109 : StackLang.HolProg 64 :=
.seq NamedBody538_1 NamedBody538_108

def NamedBody538_110 : StackLang.HolProg 64 :=
.seq NamedBody538_0 NamedBody538_109

def Named538 : Nat × StackLang.HolProg 64 := (538, NamedBody538_110)
theorem Named538_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed538 = Named538 := by
  kernel_rfl
#print axioms Named538_eq
end InitECandidate.Proofs.BackendStages
