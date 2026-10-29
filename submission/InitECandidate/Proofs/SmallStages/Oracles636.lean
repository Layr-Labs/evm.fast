import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source636
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles636
def optimizedBody636_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2), (6, 6)]

def optimizedBody636_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody636_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 10 8 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody636_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody636_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody636_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 2), (8, 8), (10, 10), (6, 6)]

def optimizedBody636_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody636_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody636_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 12 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody636_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody636_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.reg 6)))

def optimizedBody636_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody636_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody636_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 12 0#64))

def optimizedBody636_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 8 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody636_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (10, 10), (6, 6)]

def optimizedBody636_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody636_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_15 optimizedBody636_16

def optimizedBody636_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_14 optimizedBody636_17

def optimizedBody636_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_7 optimizedBody636_18

def optimizedBody636_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_13 optimizedBody636_19

def optimizedBody636_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_12 optimizedBody636_20

def optimizedBody636_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_11 optimizedBody636_21

def optimizedBody636_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_10 optimizedBody636_22

def optimizedBody636_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_9 optimizedBody636_23

def optimizedBody636_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_8 optimizedBody636_24

def optimizedBody636_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_7 optimizedBody636_25

def optimizedBody636_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_4 optimizedBody636_26

def optimizedBody636_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10)]

def optimizedBody636_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody636_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_28 optimizedBody636_29

def optimizedBody636_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_4 optimizedBody636_30

def optimizedBody636_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 10) optimizedBody636_27 optimizedBody636_31

def optimizedBody636_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_4 optimizedBody636_15

def optimizedBody636_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_32 optimizedBody636_33

def optimizedBody636_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_6 optimizedBody636_34

def optimizedBody636_36 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody636_35 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody636_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody636_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4), (2, 2), (12, 12), (10, 10), (6, 6)]

def optimizedBody636_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12)]

def optimizedBody636_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody636_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody636_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 8 8 (Flapjack.WordRegImm.reg 12)))

def optimizedBody636_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 14 8 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody636_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 14 14 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody636_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 14 14 (Flapjack.WordRegImm.reg 6)))

def optimizedBody636_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12), (14, 14)]

def optimizedBody636_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 12 (Flapjack.WordRegImm.reg 2)))

def optimizedBody636_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody636_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (16, 16)]

def optimizedBody636_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody636_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody636_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody636_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 16 (Flapjack.WordRegImm.reg 8)))

def optimizedBody636_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody636_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody636_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 8 8 (Flapjack.WordRegImm.reg 16)))

def optimizedBody636_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (8, 8)]

def optimizedBody636_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody636_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 12 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody636_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (12, 12), (6, 6)]

def optimizedBody636_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_60 optimizedBody636_16

def optimizedBody636_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_59 optimizedBody636_61

def optimizedBody636_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_12 optimizedBody636_62

def optimizedBody636_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_58 optimizedBody636_63

def optimizedBody636_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_57 optimizedBody636_64

def optimizedBody636_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_56 optimizedBody636_65

def optimizedBody636_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_55 optimizedBody636_66

def optimizedBody636_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_54 optimizedBody636_67

def optimizedBody636_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_53 optimizedBody636_68

def optimizedBody636_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_52 optimizedBody636_69

def optimizedBody636_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_51 optimizedBody636_70

def optimizedBody636_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_50 optimizedBody636_71

def optimizedBody636_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_49 optimizedBody636_72

def optimizedBody636_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_48 optimizedBody636_73

def optimizedBody636_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_47 optimizedBody636_74

def optimizedBody636_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_46 optimizedBody636_75

def optimizedBody636_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_45 optimizedBody636_76

def optimizedBody636_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_9 optimizedBody636_77

def optimizedBody636_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_44 optimizedBody636_78

def optimizedBody636_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_43 optimizedBody636_79

def optimizedBody636_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_7 optimizedBody636_80

def optimizedBody636_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_42 optimizedBody636_81

def optimizedBody636_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_12 optimizedBody636_82

def optimizedBody636_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_41 optimizedBody636_83

def optimizedBody636_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_40 optimizedBody636_84

def optimizedBody636_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_4 optimizedBody636_85

def optimizedBody636_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_4 optimizedBody636_29

def optimizedBody636_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 4) optimizedBody636_86 optimizedBody636_87

def optimizedBody636_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_4 optimizedBody636_60

def optimizedBody636_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_88 optimizedBody636_89

def optimizedBody636_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_39 optimizedBody636_90

def optimizedBody636_92 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody636_91 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody636_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10)]

def optimizedBody636_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody636_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_93 optimizedBody636_94

def optimizedBody636_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_4 optimizedBody636_95

def optimizedBody636_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_92 optimizedBody636_96

def optimizedBody636_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_38 optimizedBody636_97

def optimizedBody636_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_4 optimizedBody636_98

def optimizedBody636_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_37 optimizedBody636_99

def optimizedBody636_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_4 optimizedBody636_100

def optimizedBody636_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_36 optimizedBody636_101

def optimizedBody636_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_5 optimizedBody636_102

def optimizedBody636_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_4 optimizedBody636_103

def optimizedBody636_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_3 optimizedBody636_104

def optimizedBody636_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_2 optimizedBody636_105

def optimizedBody636_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_1 optimizedBody636_106

def optimizedBody636_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody636_0 optimizedBody636_107

def oracle636 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 6 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7))) 0
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4))))
            0
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))) 2
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 5 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 4))) 5
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)) 4
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 6)) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 7 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4))) 4
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 5
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 8))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))) 3
              (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 6 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))) 4
              (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 6)) 2
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7)))))))
      Flapjack.Spt.ln))
def optimized636 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(636, 4, optimizedBody636_108)
end InitECandidate.Proofs.SmallStages.Oracles636
