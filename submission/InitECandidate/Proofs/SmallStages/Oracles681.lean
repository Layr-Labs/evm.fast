import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source681
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles681
def optimizedBody681_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6)]

def optimizedBody681_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody681_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody681_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 4), (8, 8), (0, 2), (14, 6)]

def optimizedBody681_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody681_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody681_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody681_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody681_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 14)))

def optimizedBody681_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody681_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (48, 8), (14, 14)]

def optimizedBody681_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 14 (Flapjack.WordRegImm.reg 4)))

def optimizedBody681_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 8 8#64))

def optimizedBody681_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (48, 48), (52, 14)]

def optimizedBody681_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 8 16#64))

def optimizedBody681_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (48, 48), (52, 52)]

def optimizedBody681_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 8 24#64))

def optimizedBody681_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46), (48, 48), (50, 0), (52, 52)]

def optimizedBody681_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (10, 2), (8, 8), (18, 44), (12, 46), (16, 48), (0, 50), (14, 52)]

def optimizedBody681_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (18, 44), (12, 46), (16, 48), (0, 50), (14, 52)]

def optimizedBody681_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody681_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_19 optimizedBody681_20

def optimizedBody681_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody681_18, 681, 2)) (some 667) ([2, 4, 6, 8]) (some (2, optimizedBody681_21, 681, 3))

def optimizedBody681_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody681_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 16 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody681_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody681_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody681_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody681_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody681_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody681_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody681_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody681_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody681_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody681_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody681_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 16 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody681_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 18), (46, 12), (8, 8), (0, 0), (14, 14)]

def optimizedBody681_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody681_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_36 optimizedBody681_37

def optimizedBody681_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_35 optimizedBody681_38

def optimizedBody681_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_23 optimizedBody681_39

def optimizedBody681_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_34 optimizedBody681_40

def optimizedBody681_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_33 optimizedBody681_41

def optimizedBody681_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_32 optimizedBody681_42

def optimizedBody681_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_31 optimizedBody681_43

def optimizedBody681_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_30 optimizedBody681_44

def optimizedBody681_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_29 optimizedBody681_45

def optimizedBody681_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_28 optimizedBody681_46

def optimizedBody681_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_27 optimizedBody681_47

def optimizedBody681_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_26 optimizedBody681_48

def optimizedBody681_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_25 optimizedBody681_49

def optimizedBody681_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_24 optimizedBody681_50

def optimizedBody681_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_23 optimizedBody681_51

def optimizedBody681_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_2 optimizedBody681_52

def optimizedBody681_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_22 optimizedBody681_53

def optimizedBody681_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_17 optimizedBody681_54

def optimizedBody681_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_16 optimizedBody681_55

def optimizedBody681_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_15 optimizedBody681_56

def optimizedBody681_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_14 optimizedBody681_57

def optimizedBody681_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_13 optimizedBody681_58

def optimizedBody681_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_12 optimizedBody681_59

def optimizedBody681_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_11 optimizedBody681_60

def optimizedBody681_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_10 optimizedBody681_61

def optimizedBody681_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_9 optimizedBody681_62

def optimizedBody681_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_8 optimizedBody681_63

def optimizedBody681_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_7 optimizedBody681_64

def optimizedBody681_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_6 optimizedBody681_65

def optimizedBody681_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_5 optimizedBody681_66

def optimizedBody681_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_2 optimizedBody681_67

def optimizedBody681_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody681_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_2 optimizedBody681_69

def optimizedBody681_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 0) optimizedBody681_68 optimizedBody681_70

def optimizedBody681_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (46, 4), (8, 8), (0, 0), (14, 14)]

def optimizedBody681_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_2 optimizedBody681_72

def optimizedBody681_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_71 optimizedBody681_73

def optimizedBody681_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_4 optimizedBody681_74

def optimizedBody681_76 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody681_75 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody681_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody681_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody681_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody681_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_78 optimizedBody681_79

def optimizedBody681_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_77 optimizedBody681_80

def optimizedBody681_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_2 optimizedBody681_81

def optimizedBody681_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_76 optimizedBody681_82

def optimizedBody681_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_3 optimizedBody681_83

def optimizedBody681_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_2 optimizedBody681_84

def optimizedBody681_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_1 optimizedBody681_85

def optimizedBody681_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody681_0 optimizedBody681_86

def oracle681 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              22 (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 6))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3)))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 7
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 2)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 7
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)))
              3
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 0
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 4
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 24
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)))
              4
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 7)) 7
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)))
              0
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0
                (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 5)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)))
              2
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 4
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 4 (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 23 (Flapjack.Spt.ls 4))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))))
def optimized681 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(681, 4, optimizedBody681_87)
end InitECandidate.Proofs.SmallStages.Oracles681
